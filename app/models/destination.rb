class Destination < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :posts
  has_many :trips
  has_many :restaurants
end
