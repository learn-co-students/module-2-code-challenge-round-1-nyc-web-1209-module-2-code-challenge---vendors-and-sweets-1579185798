class VendorSweet < ApplicationRecord
    belongs_to :vendor 
    belongs_to :sweet 

    validates :price, numericality: { greater_than: 0}
    validates :sweet_id, uniqueness: { scope: :vendor_id }
end