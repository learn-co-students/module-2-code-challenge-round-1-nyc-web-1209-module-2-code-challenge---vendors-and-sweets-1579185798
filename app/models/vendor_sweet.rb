class VendorSweet < ApplicationRecord
    belongs_to :sweet
    belongs_to :vendor

    validates :price, presence: true, presence: { message: "Price can't be blank" }
    validates :price, numericality: { greater_than: 0 }, numericality: { message: "Price can't be less than 0" }
    validate :one_sweet_type_per_vendor

    def one_sweet_type_per_vendor
        if(VendorSweet.where("vendor_id = ? and sweet_id = ?", self.vendor_id, self.sweet_id).length > 0)
            errors.add(:sweet_id, "Vendor already selling sweet")
        end
    end
end