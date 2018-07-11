class NotifyMailer < ApplicationMailer
  default from: 'asadalibhatti.pro@gmail.com'

  def notification_email
    @log = params[:log]

    mail(to: 'asadalibhatti.pro@gmail.com', subject: 'Status of Plant Watering Device')
  end

end
