class Ckeditor::AttachmentFile < Ckeditor::Asset
  has_attached_file :data,
   s3_credentials: {
		  access_key_id: ENV["S3_KEY"],
		  secret_access_key: ENV["S3_SECRET"],
		  bucket: "rungazella-dev",
		},
	storage: :s3,
	s3_headers:     { "Cache-Control" => "max-age=31557600" },
	s3_protocol:    "https",
	bucket:         "rungazella-dev",
    path: "/:class/:attachment/:id/:style/:basename.:extension",
	default_url:   "/:class/:attachment/:id/:style/:basename.:extension"

  validates_attachment_size :data, :less_than => 100.megabytes
  validates_attachment_presence :data

  def url_thumb
    @url_thumb ||= Ckeditor::Utils.filethumb(filename)
  end
end
