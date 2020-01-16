class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def show
    @sweet = Sweet.find(params[:id])
    @vendor_sweets = VendorSweet.all 
    @vendors = Vendor.all 
  end

end
