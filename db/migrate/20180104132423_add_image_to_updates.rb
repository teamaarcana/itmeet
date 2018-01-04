class AddImageToUpdates < ActiveRecord::Migration[5.1]
  def change
    add_column :updates, :title, :string
    add_column :updates, :description, :text
    add_column :updates, :image, :string
  end
end
