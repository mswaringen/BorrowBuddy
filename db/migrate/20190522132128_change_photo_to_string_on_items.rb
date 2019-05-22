class ChangePhotoToStringOnItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :photo, :string
  end
end
