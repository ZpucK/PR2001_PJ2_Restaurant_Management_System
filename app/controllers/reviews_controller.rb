class ReviewsController < ApplicationController
  def index
    @reiview = Reviews.all
  end

  def show
    @review = Review.find(params[:id])
  end
end
