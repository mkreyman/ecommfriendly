# Supported backend options: :resque, :sidekiq, :delayed_job, :queue_classic, :torquebox, :backburner
Devise::Async.setup do |config|
  config.enabled = true
  config.backend = :resque
  config.queue   = :devise_mailer_queue
end
