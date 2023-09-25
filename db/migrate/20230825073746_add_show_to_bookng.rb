class AddShowToBookng < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookngs, :show, null: false, foreign_key: true
  end
end
