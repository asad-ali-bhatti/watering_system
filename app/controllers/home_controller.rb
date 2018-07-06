class HomeController < ApplicationController
  def command
    ActionCable.server.broadcast 'pi_commands_channel',
                                 command: params[:command]
    if params[:command] == 'turn_on'
      Log.create(status: true)
    else
      Log.create(status: false)
    end
    redirect_to root_path, notice: params[:command] == 'turn_on' ? 'Pump is on' : 'Pump is off'
  end

  def notify
  end

  def logs
    @logs = Log.all.order created_at: 'DESC'
  end

  def index
  end
end
