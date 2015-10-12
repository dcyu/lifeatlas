class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

  def index
    @trips = Trip.order(:arrived_on)
    respond_with(@trips)
  end

  def show
    respond_with(@trip)
  end

  def new
    @trip = Trip.new
    respond_with(@trip)
  end

  def edit
  end

  def create  
    @trip = Trip.new(trip_params)
    if @trip.save
      destination = @trip.destination
      destination.visited = true
      destination.save
    end 
    respond_with(@trip.destination)
  end

  def update
    @trip.update(trip_params)
    respond_with(@trip.destination)
  end

  def destroy
    @trip.destroy
    respond_with(@trip)
  end

  private
    def set_trip
      @trip = Trip.find(params[:id])
    end

    def trip_params
      params.require(:trip).permit(:arrived_on, :left_on, :destination_id)
    end
end
