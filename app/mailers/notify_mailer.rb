class NotifyMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def notification_email
    @log = params[:log]

    mail(to: 'example@gmail.com', subject: 'Status of Plant Watering Device')
  end

end
