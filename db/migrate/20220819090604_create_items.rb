class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :item_type
      t.references :parrent, foreign_key: { to_table: :items }
      t.timestamps
    end
  end
end
