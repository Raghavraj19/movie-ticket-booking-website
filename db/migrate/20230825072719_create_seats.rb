class CreateSeats < ActiveRecord::Migration[6.0]
  def change
    create_table :seats do |t|
      t.integer :seat_row
      t.integer :seat_no
      t.string :seat_type
    end
  end
end
