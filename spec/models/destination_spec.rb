require 'rails_helper'

RSpec.describe Destination, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  describe 'associations' do
    it { should have_many(:trips) }
    it { should have_many(:venues) }
    it { should have_many(:stops) }
  end

  describe 'geocoding' do
    let(:destination) { build(:destination, name: 'New York, NY', lat: nil, lng: nil) }

    it 'geocodes the destination on save' do
      # Mock Geocoder to return coordinates
      allow(Geocoder).to receive(:coordinates).with('New York, NY').and_return([40.7128, -74.0060])
      
      # Ensure the name is marked as changed
      destination.name_will_change!
      destination.save
      
      expect(destination.lat).to eq('40.7128')
      expect(destination.lng).to eq('-74.006')  # Geocoder truncates trailing zeros
    end

    it 'handles geocoding errors gracefully' do
      allow(Geocoder).to receive(:coordinates).with('Invalid Location').and_return(nil)
      
      destination.name = 'Invalid Location'
      destination.name_will_change!
      destination.save
      
      expect(destination.lat).to be_nil
      expect(destination.lng).to be_nil
    end
  end

  describe 'scopes' do
    let!(:visited_destination) { create(:destination, visited: true) }
    let!(:unvisited_destination) { create(:destination, visited: false) }

    describe '.visited' do
      it 'returns only visited destinations' do
        expect(Destination.visited).to include(visited_destination)
        expect(Destination.visited).not_to include(unvisited_destination)
      end
    end

    describe '.unvisited' do
      it 'returns only unvisited destinations' do
        expect(Destination.unvisited).to include(unvisited_destination)
        expect(Destination.unvisited).not_to include(visited_destination)
      end
    end
  end

  describe 'instance methods' do
    let(:destination) { create(:destination, name: 'Paris, France', lat: '48.8566', lng: '2.3522') }

    describe '#coordinates' do
      it 'returns coordinates as an array' do
        expect(destination.coordinates).to eq(['48.8566', '2.3522'])
      end

      it 'returns nil if coordinates are missing' do
        destination.lat = nil
        destination.lng = nil
        expect(destination.coordinates).to be_nil
      end
    end

    describe '#has_coordinates?' do
      it 'returns true if both lat and lng are present' do
        expect(destination.has_coordinates?).to be true
      end

      it 'returns false if either lat or lng is missing' do
        destination.lat = nil
        expect(destination.has_coordinates?).to be false
      end
    end
  end
end
