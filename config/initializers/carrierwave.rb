CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'AKIAXT5MXB4RIRT3FW7M',
    aws_secret_access_key: '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',
    region: 'us-east-2' # Por ejemplo, 'us-east-1'
  }
  config.fog_directory = 'karipic-db'
  config.fog_public = false
end
