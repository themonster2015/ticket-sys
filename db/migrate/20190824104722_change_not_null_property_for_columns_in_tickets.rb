class ChangeNotNullPropertyForColumnsInTickets < ActiveRecord::Migration[5.2]
  def change
    change_column_null :tickets, :quantity, false
    change_column_null :tickets, :ticket_type, false
  end
end
