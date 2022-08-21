class CreateImportedItems < ActiveRecord::Migration[6.0]
  def change
    create_table :imported_items do |t|
      t.datetime :imported_date
      t.integer :quantity
      t.integer :price_per_unit
      t.integer :total_price
      t.references :item, foreign_key: true
      t.timestamps
    end
  end
end
