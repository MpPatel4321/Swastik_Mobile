class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.string :name
      t.integer :mobile_no
      t.integer :price

      t.timestamps
    end
  end
end
