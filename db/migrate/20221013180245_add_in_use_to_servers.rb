class AddInUseToServers < ActiveRecord::Migration[7.0]
  def change
    add_column :servers, :in_use, :boolean
  end
end
