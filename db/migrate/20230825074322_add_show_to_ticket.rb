class AddShowToTicket < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :show, null: false, foreign_key: true
  end
end
