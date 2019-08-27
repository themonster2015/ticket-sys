# frozen_string_literal: true

class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :type
      t.integer :quantity
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
