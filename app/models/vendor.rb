class Vendor < ApplicationRecord
    has_many :vendor_sweets
    has_many :sweets, through: :vendor_sweets

    
    def average_price_by_vendor
        if self.sweets.length > 0 
            all_prices = self.sweets.pluck(:price)
            total = all_prices.reduce {|sweet, sum| sum + sweet } 
            avg_price = total / self.sweets.count
        else 
            0
        end 
    end     
    
    def self.average_price
        my_array = []
        Vendor.all.each do |vendor|
            vendor.average_price_by_vendor 
            my_array << vendor.average_price_by_vendor 
            end  
        my_array.reduce {|avg, sum| sum + avg} / Vendor.all.count
    end     
end
