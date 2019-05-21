class AddColumnsToItem < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :description, :text
    add_column :items, :photo, :text
    add_column :items, :price, :float
    add_column :items, :availability, :date
    add_reference :items, :user, foreign_key: true
  end
end
