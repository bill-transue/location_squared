Rails.application.config.middleware.use OmniAuth::Builder do
  provider :foursquare, ENV['FOURSQ_KEY'], ENV['FOURSQ_SECRET']
end
