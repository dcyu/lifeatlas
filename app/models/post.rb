class Post < ActiveRecord::Base
  belongs_to :destination
  belongs_to :venue
  has_many :photos
  validates :song, uniqueness: true

  def rating_hint
    if rating == 1
      "Disappointing"
    elsif rating == 2
      "Mediocre"
    elsif rating == 3
      "Decent"
    elsif rating == 4
      "Enjoyable"
    elsif rating == 5
      "Gamechanger"
    end
  end
end