#!/usr/bin/env ruby

require 'bundler/setup'
require 'google_places'
require 'httparty'

# Load environment variables
require 'yaml'
config = YAML.load_file('config/application.yml')
google_key = config['google_key']

puts "Testing Google API credentials..."
puts "API Key: #{google_key[0..10]}..." # Only show first 10 characters for security

# Test 1: Google Places API
puts "\n1. Testing Google Places API..."
begin
  client = GooglePlaces::Client.new(google_key)
  
  # Try to search for a place (using a simple search)
  spots = client.spots_by_query('Starbucks', detail: true, types: ['establishment'])
  
  if spots.any?
    puts "✅ Google Places API is working!"
    puts "   Found #{spots.length} results for 'Starbucks'"
    puts "   First result: #{spots.first.name}"
  else
    puts "⚠️  Google Places API responded but no results found"
  end
rescue => e
  puts "❌ Google Places API error: #{e.message}"
end

# Test 2: Google Visualization API (basic test)
puts "\n2. Testing Google Visualization API..."
begin
  # Test if we can access Google Charts API
  response = HTTParty.get('https://www.google.com/chart?cht=p3&chd=t:60,40&chs=250x100&chl=Hello|World')
  
  if response.code == 200
    puts "✅ Google Visualization API is accessible!"
  else
    puts "⚠️  Google Visualization API returned status: #{response.code}"
  end
rescue => e
  puts "❌ Google Visualization API error: #{e.message}"
end

# Test 3: Test API key format
puts "\n3. Testing API key format..."
if google_key.start_with?('AIza')
  puts "✅ API key format looks correct (starts with 'AIza')"
else
  puts "❌ API key format doesn't look like a Google API key"
end

puts "\nTest completed!" 