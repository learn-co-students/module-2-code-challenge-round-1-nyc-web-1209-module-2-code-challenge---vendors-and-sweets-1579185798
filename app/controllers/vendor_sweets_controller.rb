class VendorSweetsController < ApplicationController

    def index
      @vendor_sweets = VendorSweet.all
    end

    def new
        @vendor_sweet = VendorSweet.new
        @sweets = Sweet.all
        @vendors = Vendor.all
    end
  
    def create
        @vendor_sweet = VendorSweet.create!(vendor_sweet_params)
        redirect_to vendor_sweet_path(@vendor_sweet)
    end

    private
    def vendor_sweet_params
        params.require(:vendorsweet).permit(:sweet_id, :vendor_id, :price)
    end
  
  end