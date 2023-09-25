class ChangeColumninMOvies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :duration
    add_column :movies, :duration, :integer
  end
end
