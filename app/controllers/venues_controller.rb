class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:show, :index]


  respond_to :html

  def index
    @venues = Venue.all
    respond_with(@venues)
  end

  def show
    @lat = @venue.lat
    @lng = @venue.lng
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
    @client = GooglePlaces::Client.new("#{ENV["google_key"]}")
    spot = @client.spots_by_query("#{@venue.name}, #{@venue.destination.name.split(',').first}").first
    @venue.lat = spot.lat
    @venue.lng = spot.lng
    @venue.save
    respond_with(@venue.destination)
  end

  def update
    @client = GooglePlaces::Client.new("#{ENV["google_key"]}")
    spot = @client.spots_by_query("#{@venue.name}, #{@venue.destination.name}").first
    @venue.lat = spot.lat
    @venue.lng = spot.lng
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
