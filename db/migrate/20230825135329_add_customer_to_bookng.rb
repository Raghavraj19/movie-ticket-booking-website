class AddCustomerToBookng < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookngs, :customer, null: false, foreign_key: true
  end
end
