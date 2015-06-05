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

	#initial setup
	config.allow_ssl_in_production = true
	# config.allow_ssl_in_production = false

	#S3 configuration
		#production. Store images on S3.
		# development will default to local storage
	attachment_config = {
	s3_credentials: {
	  access_key_id: ENV["S3_KEY"],
	  secret_access_key: ENV["S3_SECRET"],
	  bucket: 'rungazella',
	},

	storage:        :s3,
	s3_headers:     { "Cache-Control" => "max-age=31557600" },
	s3_protocol:    "https",
	bucket:         'rungazella',

	path:          "/:class/:attachment/:id/:style/:basename.:extension",
	default_url:   "/:class/:attachment/:id/:style/:basename.:extension",
	default_style: "product",
	}

	attachment_config.each do |key, value|
		Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
	end
end

Spree.user_class = "Spree::User"

Spree::Auth::Config[:registration_step] = false;

Spree::Config[:shipping_instructions] = true;
