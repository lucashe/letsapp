CarrierWave.configure do |config|
  
  config.fog_credentials = {
    :provider               => 'AWS',                                      # required
    :aws_access_key_id      => 'AKIAJFACVGA7VNXGCMAA',                     # required
    :aws_secret_access_key  => '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',  # required
    #,                       
    :region                 => 'ap-southeast-1'                  # optional, defaults to 'us-east-1'
    #:host                   => 's3.example.com',             # optional, defaults to nil
    #:endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'letsapp'                     # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  
end