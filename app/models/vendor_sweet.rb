class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet
  validates :price, numericality: true
end
