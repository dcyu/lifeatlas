class Photo < ActiveRecord::Base
  belongs_to :post
  has_one_attached :picture
end
