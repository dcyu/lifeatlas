class Venue < ActiveRecord::Base
  belongs_to :destination
  has_many :posts
end
