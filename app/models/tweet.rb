class Tweet < ActiveRecord::Base
  validates :text, uniqueness: true
  validates :candidate_id, presence: true
  validates :posted_time, presence: true
  belongs_to :candidate
end
