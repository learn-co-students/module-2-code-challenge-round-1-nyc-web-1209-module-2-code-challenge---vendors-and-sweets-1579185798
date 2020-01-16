class VendorSweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet

    validate :number_not_negative_or_blank

    def number_not_negative_or_blank  # This checks whether the number is good for the price. If it's negative or blank, that's a no-go.
        if !self.price.present?
            errors.add(:blank, "Price Blank")
        elsif self.price < 0
            errors.add(:negative, "Price Negative")
        end
    end
end