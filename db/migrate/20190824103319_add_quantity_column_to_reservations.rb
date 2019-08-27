# frozen_string_literal: true

class AddQuantityColumnToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :quantity, :integer
  end
end
