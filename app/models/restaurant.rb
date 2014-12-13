class Restaurant < ActiveRecord::Base
  belongs_to :destination
  has_many :posts
end
