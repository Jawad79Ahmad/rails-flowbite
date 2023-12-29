class Product < ApplicationRecord
  validates_presence_of :name, :quantity, :price
  validates :name, uniqueness: true
  belongs_to :category

  def self.ransackable_attributes(auth_object = nil)
    ["category_id", "created_at", "id", "id_value", "name", "price", "quantity", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["category"]
  end
end
