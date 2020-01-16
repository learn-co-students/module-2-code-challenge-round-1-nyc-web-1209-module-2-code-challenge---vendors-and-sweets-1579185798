class VendorsweetsController < ApplicationController

    def new 
        @vendorsweet = Vendorsweet.new
        @sweets = Sweet.all 
        @vendors = Vendor.all 
    end 

    def create 
        @vendorsweet = Vendorsweet.new(vendorsweet_params)
        if @vendorsweet.valid?
            @vendorsweet.save 
            redirect_to vendor_path(@vendorsweet.vendor)
        else 
            @errors = @vendorsweet.errors.messages
            @vendorsweet = Vendorsweet.new
            @sweets = Sweet.all 
            @vendors = Vendor.all 
            render :new
        end 
        
    end 

    private 
    def vendorsweet_params
        params.require(:vendorsweet).permit(:sweet_id, :vendor_id, :price)
    end 
end
