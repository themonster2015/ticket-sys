# frozen_string_literal: true

class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :ticket
  def pay
    update_attribute(:paid, true)
  end

  def self.delete_expired_reservations
    reservations = Reservation.includes(:ticket).where(paid: false)
    reservations.each do |r|
      r.ticket.quantity = r.ticket.quantity + r.quantity
      r.ticket.update_attribute(:quantity, r.ticket.quantity)
    end
    reservations.destroy_all
  end
end
