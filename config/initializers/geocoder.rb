# config/initializers/geocoder.rb
redis_url = 'redis://localhost:6379/0/cache'
Geocoder.configure(

    # geocoding service (see below for supported options):
    :lookup => :google,

    # IP address geocoding service (see below for supported options):
    :ip_lookup => :freegeoip,

    # to use an API key:
    # :api_key => "...",

    # geocoding service request timeout, in seconds (default 3):
    :timeout => 5,

    # set default units to kilometers:
    :units => :mi,

    # caching
    :cache => Redis.new(:url => redis_url),
    :cache_prefix => "geocoder_"

)
