class AddSeatIdToTicket < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :seat_ids, :string, array: true, default: []
  end
end
