class Document < ActiveRecord::Base
  belongs_to :product
  mount_uploader :docname, DocnameUploader
  # has_attached_file :doc
end
