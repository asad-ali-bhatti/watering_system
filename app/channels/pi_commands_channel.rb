class PiCommandsChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'pi_commands_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
