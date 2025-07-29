#!/usr/bin/env ruby

require 'bundler/setup'
require 'geocoder'

# Load environment variables
require 'yaml'
config = YAML.load_file('config/application.yml')
google_key = config['google_key']

# Configure Geocoder to use Google API
Geocoder.configure(
  :lookup => :google,
  :api_key => google_key,
  :timeout => 5,
  :units => :km
)

puts "Testing Google Geocoding API..."
puts "API Key: #{google_key[0..10]}..." # Only show first 10 characters for security

# Test destinations
test_destinations = [
  "New York, NY",
  "London, UK", 
  "Tokyo, Japan",
  "Sydney, Australia",
  "Paris, France"
]

test_destinations.each do |destination|
  puts "\nTesting geocoding for: #{destination}"
  begin
    coordinates = Geocoder.coordinates(destination)
    
    if coordinates && coordinates.length >= 2
      lat, lng = coordinates
      puts "✅ Success! Lat: #{lat}, Lng: #{lng}"
      
      # Also test reverse geocoding
      address = Geocoder.address([lat, lng])
      puts "   Reverse geocoded to: #{address}"
    else
      puts "❌ No coordinates returned"
    end
  rescue => e
    puts "❌ Error: #{e.message}"
  end
end

puts "\nTest completed!" 