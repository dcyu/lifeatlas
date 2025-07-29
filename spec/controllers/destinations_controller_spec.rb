require 'rails_helper'

RSpec.describe DestinationsController, type: :controller do
  let(:user) { create(:user) }
  let(:valid_attributes) { { name: 'New York, NY' } }
  let(:invalid_attributes) { { name: '' } }
  let(:destination) { create(:destination, user: user) }

  before do
    sign_in user
  end

  describe "GET #index" do
    it "assigns all destinations as @destinations" do
      get :index
      expect(assigns(:destinations)).to eq([destination])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe "GET #show" do
    it "assigns the requested destination as @destination" do
      get :show, params: { id: destination.to_param }
      expect(assigns(:destination)).to eq(destination)
    end

    it "renders the show template" do
      get :show, params: { id: destination.to_param }
      expect(response).to render_template(:show)
    end
  end

  describe "GET #new" do
    it "assigns a new destination as @destination" do
      get :new
      expect(assigns(:destination)).to be_a_new(Destination)
    end

    it "renders the new template" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe "GET #edit" do
    it "assigns the requested destination as @destination" do
      get :edit, params: { id: destination.to_param }
      expect(assigns(:destination)).to eq(destination)
    end

    it "renders the edit template" do
      get :edit, params: { id: destination.to_param }
      expect(response).to render_template(:edit)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Destination" do
        expect {
          post :create, params: { destination: valid_attributes }
        }.to change(Destination, :count).by(1)
      end

      it "assigns a newly created destination as @destination" do
        post :create, params: { destination: valid_attributes }
        expect(assigns(:destination)).to be_a(Destination)
        expect(assigns(:destination)).to be_persisted
      end

      it "redirects to the created destination" do
        post :create, params: { destination: valid_attributes }
        expect(response).to redirect_to(Destination.last)
      end

      it "sets the user association" do
        post :create, params: { destination: valid_attributes }
        expect(assigns(:destination).user).to eq(user)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved destination as @destination" do
        post :create, params: { destination: invalid_attributes }
        expect(assigns(:destination)).to be_a_new(Destination)
      end

      it "re-renders the 'new' template" do
        post :create, params: { destination: invalid_attributes }
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) { { name: 'Updated Destination' } }

      it "updates the requested destination" do
        put :update, params: { id: destination.to_param, destination: new_attributes }
        destination.reload
        expect(destination.name).to eq('Updated Destination')
      end

      it "assigns the requested destination as @destination" do
        put :update, params: { id: destination.to_param, destination: valid_attributes }
        expect(assigns(:destination)).to eq(destination)
      end

      it "redirects to the destination" do
        put :update, params: { id: destination.to_param, destination: valid_attributes }
        expect(response).to redirect_to(destination)
      end
    end

    context "with invalid params" do
      it "assigns the destination as @destination" do
        put :update, params: { id: destination.to_param, destination: invalid_attributes }
        expect(assigns(:destination)).to eq(destination)
      end

      it "re-renders the 'edit' template" do
        put :update, params: { id: destination.to_param, destination: invalid_attributes }
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested destination" do
      destination_to_delete = create(:destination, user: user)
      expect {
        delete :destroy, params: { id: destination_to_delete.to_param }
      }.to change(Destination, :count).by(-1)
    end

    it "redirects to the destinations list" do
      delete :destroy, params: { id: destination.to_param }
      expect(response).to redirect_to(destinations_url)
    end
  end

  describe "authentication" do
    context "when user is not signed in" do
      before { sign_out user }

      it "redirects to sign in page for index" do
        get :index
        expect(response).to redirect_to(new_user_session_path)
      end

      it "redirects to sign in page for show" do
        get :show, params: { id: destination.to_param }
        expect(response).to redirect_to(new_user_session_path)
      end

      it "redirects to sign in page for new" do
        get :new
        expect(response).to redirect_to(new_user_session_path)
      end

      it "redirects to sign in page for edit" do
        get :edit, params: { id: destination.to_param }
        expect(response).to redirect_to(new_user_session_path)
      end

      it "redirects to sign in page for create" do
        post :create, params: { destination: valid_attributes }
        expect(response).to redirect_to(new_user_session_path)
      end

      it "redirects to sign in page for update" do
        put :update, params: { id: destination.to_param, destination: valid_attributes }
        expect(response).to redirect_to(new_user_session_path)
      end

      it "redirects to sign in page for destroy" do
        delete :destroy, params: { id: destination.to_param }
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe "geocoding integration" do
    it "calls geocoding service when creating destination" do
      allow(Geocoder).to receive(:coordinates).with('New York, NY').and_return([40.7128, -74.0060])
      
      post :create, params: { destination: { name: 'New York, NY' } }
      
      expect(Geocoder).to have_received(:coordinates).with('New York, NY')
    end

    it "handles geocoding errors gracefully" do
      allow(Geocoder).to receive(:coordinates).with('Invalid Location').and_return(nil)
      
      post :create, params: { destination: { name: 'Invalid Location' } }
      
      expect(response).to redirect_to(Destination.last)
      expect(assigns(:destination).lat).to be_nil
      expect(assigns(:destination).lng).to be_nil
    end
  end
end
