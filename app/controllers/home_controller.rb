class HomeController < ApplicationController
  def command
  end

  def notify
    ActionCable.server.broadcast "pi_commands_channel", {"message": "HELOOOOOOOO!!!!"}
    redirect_to root_path, notice: 'Pump Started'
  end

  def index
  end
end
