class Vendor < ApplicationRecord
    has_many :vendorsweets
    has_many :sweets, through: :vendorsweets

    # def vendor_average_price 
         
    #     vendorsweets = self.vendorsweets
    #     if vendorsweets != nil
    #         prices = vendorsweets.map {|vendorsweet| vendorsweet.price}
    #         byebug
    #         total = prices.reduce(:+)
    #         total / prices.length
    #     else 
    #         ""
    #     end
    # end 
end
