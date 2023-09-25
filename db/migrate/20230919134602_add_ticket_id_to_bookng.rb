class AddTicketIdToBookng < ActiveRecord::Migration[6.0]
  def change
    add_column :bookngs, :ticket_id, :string
  end
end
