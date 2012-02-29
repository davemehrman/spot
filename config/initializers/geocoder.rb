# config/initializers/geocoder.rb

# geocoding service (see below for supported options):
Geocoder::Configuration.lookup = :google_premier

# to use an API key:
Geocoder::Configuration.api_key = "AIzaSyCR-3iCK7SGusNN-MmRewVRwHpFLLvu3Kg"

# geocoding service request timeout, in seconds (default 3):
Geocoder::Configuration.timeout = 5

# use HTTPS for geocoding service connections:
Geocoder::Configuration.use_https = true

# language to use (for search queries and reverse geocoding):
Geocoder::Configuration.language = :en