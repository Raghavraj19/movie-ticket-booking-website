class AddCinemaToScreens < ActiveRecord::Migration[6.0]
  def change
    add_reference :screens, :cinema, null: false, foreign_key: true
  end
end
