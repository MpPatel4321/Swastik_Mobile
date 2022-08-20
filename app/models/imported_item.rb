class ImportedItem < ApplicationRecord
  belongs_to :item
  validates_presence_of :imported_date, :quantity, :price_per_unit, :total_price
end
