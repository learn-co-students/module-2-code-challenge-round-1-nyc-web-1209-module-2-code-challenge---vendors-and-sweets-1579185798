class VendorSweetsController < ApplicationController
  def index
    @vendorsweets = VendorSweet.all
  end

  def show
    @vendorsweet = VendorSweet.find(params[:id])
  end

  def new
    @vendorsweet = VendorSweet.new
    @vendors = Vendor.all
    @sweets = Sweet.all
  end

  def create
    @vendorsweet = VendorSweet.create!(vendorsweet_params)
    redirect_to vendor_path(@vendorsweet.vendor)
  end

  private

  def vendorsweet_params
    params.require(:vendor_sweet).permit(:price, :sweet_id, :vendor_id)
  end

end
