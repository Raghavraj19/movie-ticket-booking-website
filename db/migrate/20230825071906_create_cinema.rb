class CreateCinema < ActiveRecord::Migration[6.0]
  def change
    create_table :cinemas do |t|
      t.string :name
      t.text :address
    end
  end
end
