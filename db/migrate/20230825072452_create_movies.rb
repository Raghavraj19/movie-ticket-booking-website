class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :desc
      t.date :release_date
      t.string :genere
      t.string :language
      t.string :duration
    end
  end
end
