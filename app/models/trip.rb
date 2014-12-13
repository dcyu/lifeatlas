class Trip < ActiveRecord::Base
  validates :destination_id, presence: true
  belongs_to :destination
end
