# frozen_string_literal: true

class User < ApplicationRecord
  has_many :reservations, class_name: 'Reservation', foreign_key: 'user_id', dependent: :destroy
end
