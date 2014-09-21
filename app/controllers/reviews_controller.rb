class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build()
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @restaurant}
      else
        format.html { render action: 'new' }
      end
    end
  end

  private
  def review_params
    params.require(:review).permit(:rating, :body, :restaurant_id)
  end

end
