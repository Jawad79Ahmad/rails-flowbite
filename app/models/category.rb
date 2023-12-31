class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :products

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "name", "updated_at"]
  end
end
