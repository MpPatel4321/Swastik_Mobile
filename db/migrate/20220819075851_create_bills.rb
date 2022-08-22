class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.string :name
      t.string :father_name
      t.string :address
      t.integer :mobile_no, limit: 8
      t.integer :price
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
