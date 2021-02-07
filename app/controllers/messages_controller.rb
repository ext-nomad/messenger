class MessagesController < ApplicationController
  before_action :require_user

  def create
    message = current_user.messages.build(message_params)
    if message.save
      ActionCable.server.broadcast('chat_channel', message: message_render(message))
    else
      redirect_to root_path, alert: 'Something went wrong'
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def message_render(message)
    render(partial: 'home/message', locals: { msg: message })
  end
end
