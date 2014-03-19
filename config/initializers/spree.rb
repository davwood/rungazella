# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'

Spree.user_class = "Spree::User"

Spree.config do |config|
  	# Example:
  	# Uncomment to override the default site name.
  	config.site_name = "Gazella Running Costumes"
  	config.logo = "store/rungazella.png"

  	paperclip_config = {
			styles: {
			  mini:     "48x48>",
			  small:    "100x100>",
			  product:  "240x240>",
			  large:    "600x600>"
			}
		}

	paperclip_config.each do |key, value|
		Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
	end
end 
 	
 	