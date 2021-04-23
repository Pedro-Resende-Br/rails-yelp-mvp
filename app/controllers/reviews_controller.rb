class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def index
    @review = Review.all
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    #redirect_to reivews_path
  end

  def show
    raise
    @review = Review.find(params[:id])
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
