class WordsController < ApplicationController
  before_action :set_word, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :mandarin]

  respond_to :html

  def mandarin
  end

  def index
    @other_words = Word.where(block_list_id: nil)
    @block_lists = BlockList.order(:rank)
    respond_with(@words)
  end

  def show
    respond_with(@word)
  end

  def new
    @word = Word.new
    respond_with(@word)
  end

  def edit
  end

  def create
    @word = Word.new(word_params)
    @word.save
    redirect_to words_path
  end

  def update
    @word.update(word_params)
    redirect_to words_path    
  end

  def destroy
    @word.destroy
    respond_with(@word)
  end

  private
    def set_word
      @word = Word.find(params[:id])
    end

    def word_params
      params.require(:word).permit(:english, :mandarin, :arabic, :spanish, :cantonese, :swahili, :french, :russian, :mandarin_notes, :arabic_notes, :spanish_notes, :cantonese_notes, :swahili_notes, :french_notes, :russian_notes, :block_list_id)
    end
end
