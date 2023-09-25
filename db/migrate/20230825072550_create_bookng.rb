class CreateBookng < ActiveRecord::Migration[6.0]
  def change
    create_table :bookngs do |t|
      t.string :status
      t.integer :number_of_seats
      t.time :created_by
    end
  end
end
