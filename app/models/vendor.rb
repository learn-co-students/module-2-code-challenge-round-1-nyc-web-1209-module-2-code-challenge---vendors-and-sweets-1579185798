class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

    def average_price_of_sweeets
        if(sweets.length > 0)
            (self.vendor_sweets.average(:price).to_f * ".01".to_f).round(2)
        else
            nil
        end
    end
end
