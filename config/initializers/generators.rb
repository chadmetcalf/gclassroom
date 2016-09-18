Rails.application.config do |config|
  config.generators do |g|
    g.orm :active_record, primary_key_type: :uuid
  end
end
