class Log < ApplicationRecord
  def status_name
    status ? 'Turned On' : 'Turned Off'
  end
end
