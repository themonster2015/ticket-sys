# frozen_string_literal: true

class ChangeNotNullPropertyQuantityColumnInReservations < ActiveRecord::Migration[5.2]
  def change
    change_column_null :reservations, :quantity, false
  end
end
