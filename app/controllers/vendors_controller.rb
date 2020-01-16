class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
    # @average_price_per_vendor = Vender.average_price_per_vendor 
    # @overall_average = Vendor.overall_average
  end

  def show
    @vendor = Vendor.find(params[:id])
  end

end
