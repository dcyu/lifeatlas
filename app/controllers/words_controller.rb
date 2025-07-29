class WordsController < ApplicationController
  before_action :set_word, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :mandarin, :swahili, :twitter, :twitter_topic, :twitter_topics]
  skip_before_action :verify_authenticity_token, :only => [:twitter_topic]

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

    # Lingua Francas World
    data_table = GoogleVisualr::DataTable.new

    data_table.new_column('string', 'Country')
    data_table.new_column('string', 'Language Name')
    data_table.new_column('number', 'Language')

    sales_rows = [
      ['Italy', 'Italian', 0],
      ['Poland', 'Polish', 0],
      ['Hungary', 'Hungarian', 0],
      ['Bulgaria', 'Bulgarian', 0],
      ['Czech Republic', 'Czech', 0],
      ['Slovakia', 'Slovak', 0],
      ['Romania', 'Romanian', 0],
      ['United States', 'English', 1],
      ['Canada', 'English', 1],
      ['Ireland', 'English', 1],
      ['New Zealand', 'English', 1],
      ['United Kingdom', 'English', 1],
      ['Jamaica', 'English', 1],
      ['Australia', 'English', 1],
      ['Netherlands', 'English', 1],
      ['Norway', 'English', 1],
      ['Greenland', 'English', 1],
      ['Malta', 'English', 1],
      ['Suriname', 'English', 1],
      ['Sweden', 'English', 1],
      ['Denmark', 'English', 1],
      ['Iceland', 'English', 1],
      ['Guyana', 'English', 1],
      ['Israel', 'English', 1],
      ['Sierra Leone', 'English', 1],
      ['Liberia', 'English', 1],
      ['Belize', 'English', 1],
      ['Singapore', 'English', 1],
      ['Austria', 'English', 1],
      ['Cyprus', 'English', 1],
      ['Finland', 'English', 1],
      ['Ghana', 'English', 1],
      ['Germany', 'English', 1],
      ['Switzerland', 'English', 1],
      ['Belgium', 'English', 1],
      ['Slovenia', 'English', 1],
      ['Philipines', 'English', 1],
      ['Luxembourg', 'English', 1],
      ['Nigeria', 'English', 1],
      ['Greece', 'English', 1],
      ['Estonia', 'English', 1],
      ['South Africa', 'English', 1],
      ['Egypt', 'Arabic', 2],
      ['Sudan', 'Arabic', 2],
      ['Algeria', 'Arabic', 2],
      ['Iraq', 'Arabic', 2],
      ['Morocco', 'Arabic', 2],
      ['Saudi Arabia', 'Arabic', 2],
      ['Yemen', 'Arabic', 2],
      ['Syria', 'Arabic', 2],
      ['Tunisia', 'Arabic', 2],
      ['Somalia', 'Arabic', 2],
      ['Chad', 'Arabic', 2],
      ['United Arab Emirates', 'Arabic', 2],
      ['Jordan', 'Arabic', 2],
      ['Eritrea', 'Arabic', 2],
      ['Libya', 'Arabic', 2],
      ['Lebanon', 'Arabic', 2],
      ['Palestine', 'Arabic', 2],
      ['Oman', 'Arabic', 2],
      ['Kuwait', 'Arabic', 2],
      ['Mauritania', 'Arabic', 2],
      ['Qatar', 'Arabic', 2],
      ['Bahrain', 'Arabic', 2],
      ['Djibouti', 'Arabic', 2],
      ['Comoros', 'Arabic', 2],
      ['Western Sahara', 'Arabic', 2],
      ['Mexico', 'Spanish', 3],
      ['Colombia', 'Spanish', 3],
      ['Spain', 'Spanish', 3],
      ['Argentina', 'Spanish', 3],
      ['Peru', 'Spanish', 3],
      ['Venezuela', 'Spanish', 3],
      ['Chile', 'Spanish', 3],
      ['Ecuador', 'Spanish', 3],
      ['Cuba', 'Spanish', 3],
      ['Guatemala', 'Spanish', 3],
      ['Bolivia', 'Spanish', 3],
      ['Dominican Republic', 'Spanish', 3],
      ['Honduras', 'Spanish', 3],
      ['El Salvador', 'Spanish', 3],
      ['Paraguay', 'Spanish', 3],
      ['Nicaragua', 'Spanish', 3],
      ['Costa Rico', 'Spanish', 3],
      ['Panama', 'Spanish', 3],
      ['Uruguay', 'Spanish', 3],
      ['Equatorial Guinea', 'Spanish', 3],
      ['India', 'Hindustani', 4],
      ['Pakistan', 'Hindustani', 4],
      ['France', 'French', 5],
      ['Andorra', 'French', 5],
      ['French Guiana', 'French', 5],
      ['Gabon', 'French', 5],
      ['Monaco', 'French', 5],
      ['Republic of the Congo', 'French', 5],
      ['Democratic Republic of the Congo', 'French', 5],
      ['Haiti', 'French', 5],
      ['Cameroon', 'French', 5],
      ['Portugal', 'Portuguese', 6],
      ['Brazil', 'Portuguese', 6],
      ['Angola', 'Portuguese', 6],
      ['Mozambique', 'Portuguese', 6],
      ['Guinea-Bissau', 'Portuguese', 6],
      ['Russia', 'Russian', 7],
      ['Kazakhstan', 'Russian', 7],
      ['Kyrgyzstan', 'Russian', 7],
      ['Tajikistan', 'Russian', 7],
      ['Ukraine', 'Russian', 7],
      ['Belarus', 'Russian', 7],
      ['Moldova', 'Russian', 7],
      ['Latvia', 'Russian', 7],
      ['Lithuania', 'Russian', 7],
      ['China', 'Mandarin', 8],
    ]

    data_table.add_rows(sales_rows)

    option = { 
      title: "Useful World Languages",
      :width => "100%", 
      :height => 1000,
      :hAxis => { :title => "Language", :titleTextStyle => {bold: 'true', italic: 'false'} },
      colorAxis: {
        colors: ['grey', 'blue', 'green', 'yellow', 'orange', 'red', '#28166F', 'purple', 'gold']
        },
      legend: true
    }

    @world_chart = GoogleVisualr::Interactive::GeoChart.new(data_table, option)

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
