class AspirationsController < ApplicationController
  before_action :set_aspiration, only: [:show, :edit, :update, :destroy]

  respond_to :html

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
