class Post < ActiveRecord::Base
  belongs_to :destination
  belongs_to :restaurant

  def rating_hint
    if rating == 1
      "Utterly Disappointing"
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
