class VendorsweetsController < ApplicationController

    def index 
        @vendorsweets = VendorSweet.all 
    end 

    def new 
        @vendors = Vendor.all
        @sweets = Sweet.all
        @vendorsweet = VendorSweet.new
    end 

    def create 
        @vendorsweet = VendorSweet.create(vendorsweet_params)
        redirect_to vendorsweet_path(@vendorsweet.id)
    end 


    private 
    def vendorsweet_params
        params.require(:vendorsweet).permit(:vendor_id, :sweet_id, :price)
    end 
end
  