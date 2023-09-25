class AddScreenToSeat < ActiveRecord::Migration[6.0]
  def change
    add_reference :seats, :screen, null: false, foreign_key: true
  end
end
