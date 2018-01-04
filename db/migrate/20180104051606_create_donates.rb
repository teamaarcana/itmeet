class CreateDonates < ActiveRecord::Migration[5.1]
  def change
    create_table :donates do |t|
      t.string :title
      t.string :product
      t.integer :quantity
      t.boolean :option, :default => false
      t.timestamps
    end
  end
end
