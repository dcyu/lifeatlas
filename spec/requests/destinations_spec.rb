require 'rails_helper'

RSpec.describe "Destinations", type: :request do
  let(:user) { create(:user) }
  let(:valid_attributes) { { name: 'New York, NY' } }
  let(:invalid_attributes) { { name: '' } }

  before do
    sign_in user
  end

  describe "GET /destinations" do
    it "displays the destinations index" do
      get destinations_path
      expect(response).to have_http_status(:success)
    end

    it "requires authentication" do
      sign_out user
      get destinations_path
      expect(response).to redirect_to(new_user_session_path)
    end
  end

  describe "GET /destinations/:id" do
    let(:destination) { create(:destination, user: user) }

    it "displays the destination" do
      get destination_path(destination)
      expect(response).to have_http_status(:success)
    end

    it "requires authentication" do
      sign_out user
      get destination_path(destination)
      expect(response).to redirect_to(new_user_session_path)
    end
  end

  describe "GET /destinations/new" do
    it "displays the new destination form" do
      get new_destination_path
      expect(response).to have_http_status(:success)
    end

    it "requires authentication" do
      sign_out user
      get new_destination_path
      expect(response).to redirect_to(new_user_session_path)
    end
  end

  describe "POST /destinations" do
    context "with valid parameters" do
      it "creates a new destination" do
        expect {
          post destinations_path, params: { destination: valid_attributes }
        }.to change(Destination, :count).by(1)
      end

      it "redirects to the created destination" do
        post destinations_path, params: { destination: valid_attributes }
        expect(response).to redirect_to(Destination.last)
      end

      it "sets the user association" do
        post destinations_path, params: { destination: valid_attributes }
        expect(Destination.last.user).to eq(user)
      end
    end

    context "with invalid parameters" do
      it "does not create a destination" do
        expect {
          post destinations_path, params: { destination: invalid_attributes }
        }.not_to change(Destination, :count)
      end

      it "renders the new template" do
        post destinations_path, params: { destination: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end

    it "requires authentication" do
      sign_out user
      post destinations_path, params: { destination: valid_attributes }
      expect(response).to redirect_to(new_user_session_path)
    end
  end

  describe "GET /destinations/:id/edit" do
    let(:destination) { create(:destination, user: user) }

    it "displays the edit form" do
      get edit_destination_path(destination)
      expect(response).to have_http_status(:success)
    end

    it "requires authentication" do
      sign_out user
      get edit_destination_path(destination)
      expect(response).to redirect_to(new_user_session_path)
    end
  end

  describe "PATCH /destinations/:id" do
    let(:destination) { create(:destination, user: user) }
    let(:new_attributes) { { name: 'Updated Destination' } }

    context "with valid parameters" do
      it "updates the destination" do
        patch destination_path(destination), params: { destination: new_attributes }
        destination.reload
        expect(destination.name).to eq('Updated Destination')
      end

      it "redirects to the destination" do
        patch destination_path(destination), params: { destination: new_attributes }
        expect(response).to redirect_to(destination)
      end
    end

    context "with invalid parameters" do
      it "does not update the destination" do
        original_name = destination.name
        patch destination_path(destination), params: { destination: invalid_attributes }
        destination.reload
        expect(destination.name).to eq(original_name)
      end

      it "renders the edit template" do
        patch destination_path(destination), params: { destination: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end

    it "requires authentication" do
      sign_out user
      patch destination_path(destination), params: { destination: new_attributes }
      expect(response).to redirect_to(new_user_session_path)
    end
  end

  describe "DELETE /destinations/:id" do
    let!(:destination) { create(:destination, user: user) }

    it "destroys the destination" do
      expect {
        delete destination_path(destination)
      }.to change(Destination, :count).by(-1)
    end

    it "redirects to the destinations list" do
      delete destination_path(destination)
      expect(response).to redirect_to(destinations_path)
    end

    it "requires authentication" do
      sign_out user
      delete destination_path(destination)
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
