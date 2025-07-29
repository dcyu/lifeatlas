class StopsController < ApplicationController
  before_action :set_stop, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  respond_to :html

  def index
    @stops = Stop.all
    respond_with(@stops)
  end

  def show
    respond_with(@stop)
  end

  def new
    @stop = Stop.new
    respond_with(@stop)
  end

  def edit
  end

  def create
    @stop = Stop.new(stop_params)
    @stop.save
    respond_with(@stop.aspiration)
  end

  def update
    @stop.update(stop_params)
    respond_with(@stop)
  end

  def destroy
    @stop.destroy
    respond_with(@stop)
  end

  private
    def set_stop
      @stop = Stop.find(params[:id])
    end

    def stop_params
      params.require(:stop).permit(:aspiration_id, :destination_id)
    end
end
