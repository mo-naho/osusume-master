require_relative "constants"
CarrierWave.configure do |config|
  config.root = "#{Rails.root}/public/assets/"
  config.asset_host = Constants::URL
end
