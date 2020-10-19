class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat_channel'
    # ChatChannel.broadcast_to(
    #   current_user,
    #   message: 'New things!'
    # )
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
