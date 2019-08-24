class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :category
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
