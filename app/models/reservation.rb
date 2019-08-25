class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :ticket
  def pay 
    update_attribute(:paid, true)
  end
end
