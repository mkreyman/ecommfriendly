Resque.redis = Redis.new

Dir["/app/workers/*.rb"].each { |file| require file }