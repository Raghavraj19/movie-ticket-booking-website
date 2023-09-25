class AddMovieToShows < ActiveRecord::Migration[6.0]
  def change
    add_reference :shows, :movie, null: false, foreign_key: true
  end
end
