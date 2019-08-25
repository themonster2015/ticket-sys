class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :ticket
  def pay 
    update_attribute(:paid, true)
  end

  def self.delete_expired_reservations
    Reservation.where(:paid => false).destroy_all
  end
end
