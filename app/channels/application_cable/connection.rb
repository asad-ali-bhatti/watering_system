module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :uuid

    def connect
      p 'Connection Establish!'
      self.uuid = SecureRandom.urlsafe_base64
    end
  end
end
