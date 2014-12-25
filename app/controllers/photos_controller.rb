class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  before_action :set_destination
  before_action :set_post

  respond_to :html

  def index
    @photos = Photo.all
    respond_with(@photos)
  end

  def show
    respond_with(@photo)
  end

  def new
    @photo = Photo.new
  end

  def edit
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to @post.destination, notice: 'Photo added'
    else
      render :new
    end
  end

  def update
    @photo.update(photo_params)
    respond_with(@photo)
  end

  def destroy
    @photo.destroy
    respond_with(@photo)
  end

  private
    def set_photo
      @photo = Photo.find(params[:id])
    end

    def set_post
      @post = Post.find(params[:post_id])
    end

    def set_destination
      @destination = Destination.find(params[:destination_id])
    end

    def photo_params
      params.require(:photo).permit(:picture, :post_id, :description)
    end
end
