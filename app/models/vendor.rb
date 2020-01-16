class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

    def average_price
        self.vendor_sweets.average(:price)
    end
end
