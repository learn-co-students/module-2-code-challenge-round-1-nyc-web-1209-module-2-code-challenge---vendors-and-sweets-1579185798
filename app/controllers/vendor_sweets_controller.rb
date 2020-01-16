class VendorSweetsController < ApplicationController

  def index
    @vendorsweets = VendorSweet.all 
  end

  def show
    @vendorsweet = VendorSweet.find(params[:id])   
  end

end
 