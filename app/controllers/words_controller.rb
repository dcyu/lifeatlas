class WordsController < ApplicationController
  before_action :set_word, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :mandarin, :swahili, :twitter, :twitter_topic, :twitter_topics]
  skip_before_filter :verify_authenticity_token, :only => [:twitter_topic]

  respond_to :html

  def mandarin
  end

  def twitter
    @candidates = Candidate.all
  end

  def twitter_topics
  end

  def twitter_topic
    @candidates = Candidate.all
    @words = params[:topic]
  end

  def index
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
    redirect_to words_path(anchor: @word.block_list.title.snakecase), notice: 'Block was successfully created.'
  end

  def update
    @word.update(word_params)
    redirect_to words_path(anchor: @word.block_list.title.snakecase), notice: 'Block was successfully updated.'    
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
      params.require(:word).permit(:english, :mandarin, :arabic, :spanish, :cantonese, :swahili, :french, :russian, :mandarin_notes, :arabic_notes, :spanish_notes, :cantonese_notes, :swahili_notes, :french_notes, :russian_notes, :italian, :italian_notes, :block_list_id, :topic, :persian, :persian_notes, :esperanto, :esperanto_notes)
    end
end
