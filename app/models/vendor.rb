class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

    # def average_price_per_vendor
    #     total = 0
    #     self.vendor_sweets.each do |vs|
    #         total += vs.price
    #     end 
    #     average = total / self.vendor_sweets.length
    # end

    # def self.overall_average
    #    total = 0
    #    Vendor.all.each do |vendor|
    #         vendor.vendor_sweets.each do |vs|
    #             total += vs.price
    #         end
    #     end
    #     average = total / Vender.all.length
    # end

end
