class FurnituresController < ApplicationController
  def index
    @furnitures = Furniture.all
    
    if params[:category].present?
      @furnitures = Furniture.where(category: params[:category])
    else
      @furnitures = Furniture.all
    end

  end

  def show
    @package = Package.new
    @furniture = Furniture.find(params[:id])
  end


end
