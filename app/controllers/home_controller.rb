class HomeController < ApplicationController
  before_action :require_user

  def index
    @users = User.all
    @messages = Message.all
  end
end
