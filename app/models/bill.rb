class Bill < ApplicationRecord
  belongs_to :item
  validates_presence_of :name, :father_name, :address, :price, :mobile_no

end
