class PiCommandsChannel < ApplicationCable::Channel
  def subscribed
    print 'Channel Subscribed 12'
    stream_from 'pi_commands_channel'
  end

  def unsubscribed
    print 'Channel UnSubscribed'
  end

  def love(data)
    print "Love you"
    print data
    ActionCable.server.broadcast "pi_commands_channel", {"message": "HELOOOOOOOO!!!!"}
  end
end
