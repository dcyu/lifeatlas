class Post < ActiveRecord::Base
  belongs_to :destination
  belongs_to :restaurant
end
