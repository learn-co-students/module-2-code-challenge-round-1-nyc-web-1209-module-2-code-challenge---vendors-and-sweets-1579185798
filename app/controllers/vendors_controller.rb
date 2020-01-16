class VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
  end

  def show
    @sweet = Sweet.all
    @vendor = Vendor.find(params[:id])
  end 


end
