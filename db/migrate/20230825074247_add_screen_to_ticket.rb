class AddScreenToTicket < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :screen, null: false, foreign_key: true
  end
end
