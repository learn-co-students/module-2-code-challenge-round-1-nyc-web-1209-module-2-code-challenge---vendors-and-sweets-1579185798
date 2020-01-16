class VendorSweet < ApplicationRecord
    belongs_to :vendor 
    belongs_to :sweet 

    validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 0 } 

    #validate :unique_pair_of_vender_and_sweet



    #def unique_pair_of_vender_and_sweet
    #    if VendorSweet.find_by(vendor_id: vendor_id) && VendorSweet.find_by
    #end 

end 