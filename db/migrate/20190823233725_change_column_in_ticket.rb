# frozen_string_literal: true

class ChangeColumnInTicket < ActiveRecord::Migration[5.2]
  def change
    rename_column :tickets, :type, :ticket_type
  end
end
