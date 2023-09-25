class AddCityToCinemas < ActiveRecord::Migration[6.0]
  def change
    add_reference :cinemas, :city, null: false, foreign_key: true
  end
end
