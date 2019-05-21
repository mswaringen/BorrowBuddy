class AddOwnerToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :owner_id, :integer
    add_index :items, :owner_id
  end
end
