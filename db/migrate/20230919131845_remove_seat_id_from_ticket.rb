class RemoveSeatIdFromTicket < ActiveRecord::Migration[6.0]
  def change
    remove_column :tickets, :seat_id, :int
  end
end
