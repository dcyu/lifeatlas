class AspirationsController < ApplicationController
  before_action :set_aspiration, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @aspirations = Aspiration.all
    respond_with(@aspirations)
  end

  def show
    respond_with(@aspiration)
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
      params.require(:aspiration).permit(:description)
    end
end
