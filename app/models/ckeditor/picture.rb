class Ckeditor::Picture < Ckeditor::Asset
  has_attached_file :data,
                    styles: { :content => '600>', :thumb => '118x100#' },
   s3_credentials: {
		  access_key_id: ENV["S3_KEY"],
		  secret_access_key: ENV["S3_SECRET"],
		  bucket: ENV["S3_BUCKET"],
		},
	storage: :s3,
	s3_headers:     { "Cache-Control" => "max-age=31557600" },
	s3_protocol:    "https",
	bucket:         ENV["S3_BUCKET"],
    path: "/:class/:attachment/:id/:style/:basename.:extension",
	default_url:   "/:class/:attachment/:id/:style/:basename.:extension",
	default_style: "medium"

  validates_attachment_size :data, :less_than => 2.megabytes
  validates_attachment_presence :data

  def url_content
    url(:content)
  end
end
