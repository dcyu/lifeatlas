class AspirationsController < ApplicationController
  before_action :set_aspiration, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:show, :index]
  

  respond_to :html

  require 'openssl'
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

  def auth
    client_id = '740792707106-isg69chglnkodi0hinm1cv1qpalbaqir.apps.googleusercontent.com'
    client_secret = 'la-ZENpjFQi6q32jc0bARgL3'
    redirect_uri = 'http://localhost:3000/contacts'
    client = OAuth2::Client.new(client_id, client_secret, 
               site: 'https://accounts.google.com',
               token_url: '/o/oauth2/token',
               authorize_url: '/o/oauth2/auth')
    url = client.auth_code.authorize_url(scope: "https://www.google.com/m8/feeds",
               redirect_uri: redirect_uri)

    redirect_to url

  end

  def flight_template
    @origin_city = "Nairobi"
    @destination_city = "Pemba"
    @origin_city_code = "NBO"
    @destination_city_code = "POL"

    @departure_terminal = "1C"
    @departure_landing_terminal = "1"
    @return_terminal = "1"
    @return_landing_terminal = "1C"

    @departure_duration = "2h 10m duration"
    @return_duration = "2h 10m duration"

    @multileg = false


    @flight_cost = "$412.23"

    @itinerary = "9483729304758"
    @confirmation = "SJWRNV"
    @booking = "8DNE93"
    @ticket = "2735280574637"


    @passenger_name = "Lesley de Dios"

    @departure_time = "4:15 PM"
    @departure_landing_time = "5:25 PM"
    @departure_date = "Apr 12, 2017"
    @return_time = "12:25 PM"
    @return_landing_time = "3:35 PM"
    @return_date = "Apr 19, 2017"
    @airline = "LAM"
    @departure_flight_number = "TM403"
    @return_flight_number = "TM402"


    render layout: false
  end

  def contacts
    client_id = '740792707106-isg69chglnkodi0hinm1cv1qpalbaqir.apps.googleusercontent.com'
    client_secret = 'la-ZENpjFQi6q32jc0bARgL3'
    redirect_uri = 'http://localhost:3000/contacts'
    client = OAuth2::Client.new(client_id, client_secret, 
               site: 'https://accounts.google.com',
               token_url: '/o/oauth2/token',
               authorize_url: '/o/oauth2/auth')

    code = params[:code]
    token = client.auth_code.get_token(code, :redirect_uri => redirect_uri)
    user = GoogleContactsApi::User.new(token)
    @contacts = user.contacts.sort_by{|contact| contact.updated}.reverse

  end


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
