class AddSeatIdtoBookng < ActiveRecord::Migration[6.0]
  def change
    add_column :bookngs, :seat_ids, :string, array: true, default: []
  end
end
