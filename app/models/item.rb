class Item < ApplicationRecord
  has_many :sub_items, class_name: "Item", foreign_key: "parrent_id"
  belongs_to :parrent, class_name: "Item", optional: true
  has_many :imported_items
  has_many :bills
  validates_presence_of :name
end
