class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:show, :index]


  respond_to :html

  def index
    @restaurants = Restaurant.all
    respond_with(@restaurants)
  end

  def show
    respond_with(@restaurant)
  end

  def new
    @restaurant = Restaurant.new
    respond_with(@restaurant)
  end

  def edit
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    respond_with(@restaurant.destination)
  end

  def update
    @restaurant.update(restaurant_params)
    respond_with(@restaurant.destination)
  end

  def destroy
    @restaurant.destroy
    respond_with(@restaurant)
  end

  private
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
      params.require(:restaurant).permit(:name, :destination_id)
    end
end
