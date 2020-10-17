class HomeController < ApplicationController
  def index
    @users = User.all
    @messages = Message.all
  end
end
