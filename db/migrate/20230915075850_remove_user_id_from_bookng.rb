class RemoveUserIdFromBookng < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookngs, :user_id, :int
  end
end
