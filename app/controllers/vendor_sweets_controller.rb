class VendorSweetsController < ApplicationController
    
    def new
        @vendor_sweet = VendorSweet.new
    end
    
    def create
        @vendor_sweet = VendorSweet.new(vendor_sweet_params)  # Send through the params checker for the Swole Params!
        if @vendor_sweet.save
            redirect_to vendor_path(@vendor_sweet.vendor) # Redirects to the Vendor's Show Page.
        else
            render 'new' # If there's an error, you're sent back to the new object form, with added error messages!
        end
    end

    

    private

    def vendor_sweet_params(*args)
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price, :id)
    end
end