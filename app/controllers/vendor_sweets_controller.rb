class VendorSweetsController < ApplicationController
    def new
        @vendor_sweet = VendorSweet.new
        @vendors = Vendor.all
        @sweets = Sweet.all
    end

    def create
        @vendor_sweet = VendorSweet.new(veondor_sweet_params)
        if(@vendor_sweet.save)
            redirect_to vendor_path(@vendor_sweet.vendor_id)
        else
            flash[:error] = @vendor_sweet.errors.messages
            @vendors = Vendor.all
            @sweets = Sweet.all
            render :new
        end
    end

    def veondor_sweet_params
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end
end