class Destination < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :posts
  has_many :trips
  has_many :venues

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
