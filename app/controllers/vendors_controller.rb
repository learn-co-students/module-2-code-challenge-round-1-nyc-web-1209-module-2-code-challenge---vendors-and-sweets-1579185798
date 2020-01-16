class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
    @vendor_sweets = VendorSweet.all 
  end

  def show
    @vendor = Vendor.find(params[:id])
    @vendor_sweets = VendorSweet.all
    @sweets = Sweet.all 
  end
end
