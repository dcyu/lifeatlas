class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:show, :index, :landing]


  # GET /destinations
  # GET /destinations.json
  def landing
    @destinations = Destination.all
    @posts = Post.last(5).reverse
  end

  def index
    @destinations = Destination.order(:name)
  end

  # GET /destinations/1
  # GET /destinations/1.json
  def show
    @destinations = [@destination]
    @trips = @destination.trips
    @venues = @destination.venues
    @posts = @destination.posts.reverse
  end

  # GET /destinations/new
  def new
    @destination = Destination.new
  end

  # GET /destinations/1/edit
  def edit
  end

  # POST /destinations
  # POST /destinations.json
  def create
    @destination = Destination.new(destination_params)
    geo = Geocoder.coordinates(@destination.name)
    @destination.lat = geo.first
    @destination.lng = geo.last

    respond_to do |format|
      if @destination.save
        format.html { redirect_to destinations_path, notice: 'Destination was successfully created.' }
        format.json { render :show, status: :created, location: @destination }
      else
        format.html { render :new }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destinations/1
  # PATCH/PUT /destinations/1.json
  def update
    @destination = Destination.new(destination_params)
    geo = Geocoder.coordinates(@destination.name)
    @destination.lat = geo.first
    @destination.lng = geo.last
    
    respond_to do |format|
      if @destination.update(destination_params)
        format.html { redirect_to @destination, notice: 'Destination was successfully updated.' }
        format.json { render :show, status: :ok, location: @destination }
      else
        format.html { render :edit }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destinations/1
  # DELETE /destinations/1.json
  def destroy
    @destination.destroy
    respond_to do |format|
      format.html { redirect_to destinations_url, notice: 'Destination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destination
      @destination = Destination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def destination_params
      params.require(:destination).permit(:name, :arrived_on, :left_on, :lng, :lat)
    end
end
