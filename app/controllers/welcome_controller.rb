class WelcomeController < ApplicationController
  def index
    @restaurants = Restaurant.order("created_at desc").limit(10)
  end
end
