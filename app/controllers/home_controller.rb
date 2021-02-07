class HomeController < ApplicationController
  before_action :require_user

  def index
    @message = Message.new
    @users = User.all
    @messages = Message.latest
  end

  def history; end

  def clear_history
    Message.where(user: @current_user).delete_all
    redirect_to history_path, notice: 'All messages successfully deleted'
  end
end
