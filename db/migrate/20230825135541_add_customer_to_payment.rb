class AddCustomerToPayment < ActiveRecord::Migration[6.0]
  def change
    add_reference :payments, :customer, null: false, foreign_key: true
  end
end
