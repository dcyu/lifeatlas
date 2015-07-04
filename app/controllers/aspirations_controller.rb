class AspirationsController < ApplicationController
  before_action :set_aspiration, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:show, :index]
  

  respond_to :html


  def index
    @aspirations = Aspiration.all

    respond_with(@aspirations)
  end

  def show
    @destinations = @aspiration.destinations.order(:name)
  end

  def new
    @aspiration = Aspiration.new
    respond_with(@aspiration)
  end

  def edit
  end

  def create
    @aspiration = Aspiration.new(aspiration_params)
    @aspiration.save
    redirect_to aspirations_path
  end

  def update
    @aspiration.update(aspiration_params)
    respond_with(@aspiration)
  end

  def destroy
    @aspiration.destroy
    respond_with(@aspiration)
  end

  private
    def set_aspiration
      @aspiration = Aspiration.find(params[:id])
    end

    def aspiration_params
      params.require(:aspiration).permit(:description, :title)
    end
end
