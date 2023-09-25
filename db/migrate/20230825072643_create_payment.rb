class CreatePayment < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.string :status
      t.integer :total_ammount
      t.string :payment_type
    end
  end
end
