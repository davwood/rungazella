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

 	#S3 configuration
 	if Rails.env.production? do 

 		#production. Store images on S3.
 		# development will default to local storage
		attachment_config = {
		s3_credentials: {
		  access_key_id: ENV["S3_KEY"],
		  secret_access_key: ENV["S3_SECRET"],
		  bucket: ENV["S3_BUCKET"],
		},

		storage:        :s3,
		s3_headers:     { "Cache-Control" => "max-age=31557600" },
		s3_protocol:    "https",
		bucket:         ENV["S3_BUCKET"],

		path:          ":rails_root/public/:class/:attachment/:id/:style/:basename.:extension",
		default_url:   "/:class/:attachment/:id/:style/:basename.:extension",
		default_style: "product",
		}

		attachment_config.each do |key, value|
			Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
		end

	end
 	
 	#paperclip image sizing config
	 	sizing_config = {

			styles: {
			  mini:     "48x48>",
			  small:    "100x100>",
			  product:  "240x240>",
			  large:    "600x600>"
			}

		}

		sizing_config.each do |key, value|
			Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
		end
 		
end
Spree.user_class = "Spree::User"
end