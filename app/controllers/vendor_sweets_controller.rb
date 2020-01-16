class VendorSweetsController < ApplicationController
  def new
    @vendors = Vendor.all 
    @sweets = Sweet.all
    @vendor_sweet = VendorSweet.new
  end

  def create
    @vendors = Vendor.all 
    @sweets = Sweet.all
    @vendor_sweet = VendorSweet.new(vs_params)
    if @vendor_sweet.valid?
      @vendor_sweet.save
      @vendor = @vendor_sweet.vendor
      redirect_to vendor_path(@vendor)
    else
      flash[:errors] = @vendor_sweet.errors.full_messages
      render :new
    end
  end

  private
  def vs_params
    params.require(:vendor_sweet).permit(:vendor_id,:sweet_id,:price)
  end
end
