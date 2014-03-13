# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  config.site_name = "Gazella Running Costumes"
  config.logo = "store/rungazella.png"
  config.use_s3 = true
  config.s3_bucket = 'rungazella'
  config.s3_access_key = "AKIAI6UTQOH4JCZ5A5EQ"
  config.s3_secret = "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"
end

Spree.user_class = "Spree::User"

# think below is only if you are in europe..
# Paperclip.interpolates(:s3_eu_url) do |attachment, style|
# "#{attachment.s3_protocol}://#{Spree::Config[:s3_host_alias]}/#{attachment.bucket_name}/#{attachment.path(style).gsub(%r{^/},"")}"
# end