class AddColumnToImportedItem < ActiveRecord::Migration[6.0]
  def change
    add_column :imported_items, :profit, :integer
  end
end
