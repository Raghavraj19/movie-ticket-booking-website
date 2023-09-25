class AddBookngToPayment < ActiveRecord::Migration[6.0]
  def change
    add_reference :payments, :bookng, null: false, foreign_key: true
  end
end
