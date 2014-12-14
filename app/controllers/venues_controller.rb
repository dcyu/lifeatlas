class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:show, :index]


  respond_to :html

  def index
    @venues = Venue.all
    respond_with(@venues)
  end

  def show
    geo = Geocoder.coordinates("purple pig #{@venue.destination.name}")
    @lat = geo.first
    @lng = geo.last
    respond_with(@venue)
  end

  def new
    @venue = Venue.new
    respond_with(@venue)
  end

  def edit
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.save
    respond_with(@venue.destination)
  end

  def update
    @venue.update(venue_params)
    respond_with(@venue.destination)
  end

  def destroy
    @venue.destroy
    respond_with(@venue)
  end

  private
    def set_venue
      @venue = Venue.find(params[:id])
    end

    def venue_params
      params.require(:venue).permit(:name, :destination_id)
    end
end
