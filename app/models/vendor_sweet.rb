class VendorSweet < ApplicationRecord
    belongs_to :sweet
    belongs_to :vendor

    validates :price, presence: true
    validates :price, numericality: { greater_than: 0 }
    validates :vendor, uniqueness: { scope: :sweet, message: "vendor already has sweet, choose another sweet" }

end
