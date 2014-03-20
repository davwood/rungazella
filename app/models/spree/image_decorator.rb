Spree::Image.class_eval do
  attachment_definitions[:attachment][:styles] = {
    mini:     "50x60>", #used for the thumbnails
	small:    "120x144>", #used for the product listing
	product:  "300x361>", #used for the main product page
	large:    "700x841>" #could be used for hovering
  }
end