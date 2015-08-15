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
    @candidates = Candidate.all

    @topics = [
      ["guns", "gun"],

      ["drugs", "drug"],
      
      ["healthcare", "obamacare"],

      ["immigration", "immigrants", "immigrant"],
      
      ["abortion", "pro-life"],
      
      ["gay marriage", "traditional marriage"],

      ["climate change", "global warming"],

      ["military", "troops"],
      ["border"],
      ["terrorism", "terrorists", "terrorist", "isis", "isil", "al qaeda"],


      ["tax", "taxes"],
      ["trade"],

      ["women", "woman"],
      ["African Americans", "african american", "african-american", "black", "african"],
      ["Latinos", "latino", "hispanic", "hispanics"],
      
      ["Christianity", "christians", "christian", "jesus", "christ"],
      ["Islam", "muslim", "muslims"],


      ["Mexico", "mexican", "mexicans"],
      ["China", "chinese"],
      ["Russia"],
      ["Iran"],
      ["Iraq"],
      ["Israel"],
      ["Palestine", "West Bank"],

      ["Obama"],
      ["Clinton"],
      ["Sanders"],
    ]

  end

  def twitter_topic
    @candidates = Candidate.all
    @words = params[:topic]
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
      params.require(:word).permit(:english, :mandarin, :arabic, :spanish, :cantonese, :swahili, :french, :russian, :mandarin_notes, :arabic_notes, :spanish_notes, :cantonese_notes, :swahili_notes, :french_notes, :russian_notes, :block_list_id, :topic)
    end
end
