Geocoder.configure(
  # geocoding service (see below for supported options):
  :lookup => :google,
  :api_key => ENV["google_key"],
  :timeout => 5,
  :units => :km
)