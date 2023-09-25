class CreateShows < ActiveRecord::Migration[6.0]
  def change
    create_table :shows do |t|
      t.date :date
      t.timestamp :start_time
      t.timestamp :end_time
    end
  end
end
