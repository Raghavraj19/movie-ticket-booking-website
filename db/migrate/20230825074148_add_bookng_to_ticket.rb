class AddBookngToTicket < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :bookng, null: false, foreign_key: true
  end
end
