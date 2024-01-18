Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://localhost:6000/0' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://localhost:6000/0' }
end
