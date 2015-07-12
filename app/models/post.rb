class Post < ActiveRecord::Base
  belongs_to :destination
  belongs_to :venue
  belongs_to :subject
  has_many :photos
  validates :song, uniqueness: true

  def rating_hint
    if rating == 1
      "Disappointing"
    elsif rating == 2
      "Mediocre"
    elsif rating == 3
      "Good"
    elsif rating == 4
      "Excellent"
    elsif rating == 5
      "Gamechanger"
    end
  end
end