class RestaurantsController < ApplicationController

  def new
    @restaurant = Restaurant.new
  end

  def index
    @restaurant = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
