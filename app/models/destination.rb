class Destination < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :lat, presence: true, unless: :new_record?
  validates :lng, presence: true, unless: :new_record?
  
  has_many :posts
  has_many :trips
  has_many :venues
  has_many :stops
  belongs_to :user

  scope :visited, -> { where(visited: true) }
  scope :unvisited, -> { where(visited: false) }

  before_save :geocode_location

  def coordinates
    [lat, lng] if lat.present? && lng.present?
  end

  def has_coordinates?
    lat.present? && lng.present?
  end

  private

  def geocode_location
    if name_changed? && name.present?
      begin
        geo = Geocoder.coordinates(name)
        if geo && geo.length >= 2
          self.lat = geo[0].to_s
          self.lng = geo[1].to_s
          Rails.logger.info "Successfully geocoded #{name} to #{lat}, #{lng}"
        else
          Rails.logger.warn "Could not geocode #{name}"
        end
      rescue => e
        Rails.logger.error "Geocoding error for #{name}: #{e.message}"
      end
    end
  end
end

def distance(*trips)
  all_trips = trips.flatten.sort_by{|trip| trip.arrived_on}

  distances = []
  
  previous_trip = all_trips.first

  all_trips.each do |trip|
    if (trip.arrived_on - previous_trip.left_on) > 2 && trip.covered_trip || (trip.arrived_on - previous_trip.left_on) < 0 && trip.covered_trip
      distance = Geocoder::Calculations.distance_between([trip.destination.lat, trip.destination.lng], [trip.covered_trip.destination.lat, trip.covered_trip.destination.lng]) * 2
    else
      distance = Geocoder::Calculations.distance_between([previous_trip.destination.lat, previous_trip.destination.lng], [trip.destination.lat, trip.destination.lng])
    end

    distances << distance
    previous_trip = trip
  end

  distances.inject(0, :+)
end
