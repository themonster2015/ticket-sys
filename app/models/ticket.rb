class Ticket < ApplicationRecord
  belongs_to :event
  has_many :reservations, class_name: "Reservation", foreign_key: "ticket_id", dependent: :destroy
end
