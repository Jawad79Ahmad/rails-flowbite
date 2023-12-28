class Product < ApplicationRecord
  validates_presence_of :name, :quantity, :price
  belongs_to :category
end
