class HomeController < ApplicationController
  before_action :require_user

  def index
    @message = Message.new
    @users = User.all
    @messages = Message.all
  end
end
