class CreateCity < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :state
      t.integer :pin_code
    end
  end
end
