class CreateServers < ActiveRecord::Migration[7.0]
  def change
    create_table :servers do |t|
      t.string :title
      t.string :model_number
      t.text :description

      t.timestamps
    end
  end
end
