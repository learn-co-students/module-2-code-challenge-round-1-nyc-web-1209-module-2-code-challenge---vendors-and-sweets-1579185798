class SweetsController < ApplicationController
  before_action :find_sweet, only: [:show]

  def index
    @sweets = Sweet.all
  end

  def show
    @vendors = @sweet.vendors
  end

  def find_sweet
    @sweet = Sweet.find(params[:id])
  end
end
