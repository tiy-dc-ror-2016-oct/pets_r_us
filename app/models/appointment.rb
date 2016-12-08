class Appointment < ApplicationRecord
  belongs_to :pet

  def owner
    pet.owner
  end
end
