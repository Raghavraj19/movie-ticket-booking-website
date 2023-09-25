class AddScreenToShows < ActiveRecord::Migration[6.0]
  def change
    add_reference :shows, :screen, null: false, foreign_key: true
  end
end
