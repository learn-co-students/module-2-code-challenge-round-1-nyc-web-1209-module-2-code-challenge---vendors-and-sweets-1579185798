class VendorSweetsController < ApplicationController
    def index
      @vendor_sweets = VendorSweet.all
    end

    def show
        @vendor_sweet = VendorSweet.find(params[:id])
    end

    def new
        @vendor_sweet = VendorSweet.new 
    end

    def create
        @vendor_sweet = VendorSweet.new(vendor_sweets_params(:vendor_id, :sweet_id, :price))
        if @vendor_sweet.save
            redirect_to vendor_path(@vendor_sweet.vendor_id)
        else
            flash[:errors] = @vendor_sweet.errors.full_messages
            redirect_to new_vendor_sweet_path 
        end 
    end

    private

    def vendor_sweets_params(*args)
        params.require(:vendor_sweet).permit(*args)
    end
  end