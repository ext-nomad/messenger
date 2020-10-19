class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: %i[new create]
  def new; end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      user.toggle!(:status)
      redirect_to root_path, notice: "You have successfully logged in #{user.status}"
    else
      flash.now[:alert] = 'Something went wrong'
      render 'new'
    end
  end

  def destroy
    current_user.toggle!(:status)
    session[:user_id] = nil
    redirect_to login_path, notice: 'You have successfully logged out'
  end

  private

  def logged_in_redirect
    redirect_to root_path, alert: 'You are already logged in' if logged_in?
  end
end
