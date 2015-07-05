class BlockListsController < ApplicationController
  before_action :set_block_list, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:show]


  respond_to :html

  def index
    @block_lists = BlockList.all
    respond_with(@block_lists)
  end

  def show
    respond_with(@block_list)
  end

  def new
    @block_list = BlockList.new
    respond_with(@block_list)
  end

  def edit
  end

  def create
    @block_list = BlockList.new(block_list_params)
    @block_list.save
    redirect_to words_path
  end

  def update
    @block_list.update(block_list_params)
    respond_with(@block_list)
  end

  def destroy
    @block_list.destroy
    respond_with(@block_list)
  end

  private
    def set_block_list
      @block_list = BlockList.find(params[:id])
    end

    def block_list_params
      params.require(:block_list).permit(:title, :description, :mandarin_notes, :arabic_notes, :spanish_notes, :cantonese_notes, :swahili_notes, :french_notes, :russian_notes)
    end
end
