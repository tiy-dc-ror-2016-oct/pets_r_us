class NotifyOwnerOfAppointment < ApplicationJob

  def perform(appointment)
    HTTParty.post("http://requestb.in/olrq9lol", body: appointment.to_json)
  end

end
