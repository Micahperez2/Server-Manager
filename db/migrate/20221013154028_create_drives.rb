class CreateDrives < ActiveRecord::Migration[7.0]
  def change
    create_table :drives do |t|
      t.string :name
      t.integer :capacity
      t.string :description

      t.timestamps
    end
  end
end
