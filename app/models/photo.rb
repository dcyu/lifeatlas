class Photo < ActiveRecord::Base
  belongs_to :post
  has_attached_file :picture

  validates_attachment :picture, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
