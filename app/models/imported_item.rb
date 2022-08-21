class ImportedItem < ApplicationRecord
  belongs_to :item
  validates_presence_of :imported_date, :quantity, :price_per_unit
  before_create do
    self.total_price = self.quantity * self.price_per_unit
  end
end
