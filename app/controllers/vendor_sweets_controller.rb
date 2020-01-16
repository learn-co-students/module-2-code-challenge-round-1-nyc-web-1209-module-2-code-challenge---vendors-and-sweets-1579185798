class VendorSweetsController < ApplicationController

    def create
      vendor_sweet = VendorSweet.create(vendor_sweet_params)
      if vendor_sweet.valid?
        redirect_to vendor_path(vendor_sweet.vendor)
      else
        groom_error_messages(vendor_sweet)
        redirect_to new_vendor_sweet_path
      end
    end

    def new
      @vendor_sweet = VendorSweet.new
      @vendors = Vendor.all
      @sweets = Sweet.all
    end

    private

    def vendor_sweet_params
      params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end

    def groom_error_messages(vendor_sweet)
      flash[:errors] = []
      vendor_sweet.errors.full_messages.each do |error_message|
          if error_message == "Vendor has already been taken"
            flash[:errors] << "#{vendor_sweet.vendor.name} vendor already has #{vendor_sweet.sweet.name} sweet"
          else 
            flash[:errors] << error_message
          end
      end
    end
  
  end
  