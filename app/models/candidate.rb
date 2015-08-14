class Candidate < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :tweets
end
