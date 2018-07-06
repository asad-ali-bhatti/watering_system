class PiCommandsChannel < ApplicationCable::Channel
  def subscribed
    print 'Channel Subscribed 12'
    stream_from 'pi_commands_channel'
  end

  def unsubscribed
    print 'Channel UnSubscribed'
  end

  def ping
     print "Ping from Client!!!!!!!"
  end
end
