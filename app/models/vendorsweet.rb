class Vendorsweet < ApplicationRecord
    belongs_to :vendor 
    belongs_to :sweet

    validates :price, presence: true
    validates :price,  numericality: {greater_than_or_equal_to: 0}
    
    def self.average_sweets_price 
        prices = Vendorsweet.all.map {|vendorsweet| vendorsweet.price}
        total = prices.reduce(:+)
        total / prices.length
    end 

end
