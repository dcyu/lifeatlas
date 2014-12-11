class Destination < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :posts
end
