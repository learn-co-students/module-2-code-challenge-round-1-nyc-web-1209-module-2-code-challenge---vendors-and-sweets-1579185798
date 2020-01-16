class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
    @average_sweets_price = Vendorsweet.average_sweets_price 
  end

  def show 
    @vendor = Vendor.find(params[:id])
    @sweets = @vendor.sweets.uniq
  end 

end
