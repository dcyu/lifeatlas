class Trip < ActiveRecord::Base
  validates :destination_id, presence: true
  belongs_to :destination

  def years
    years = [*self.arrived_on.year..self.left_on.year]
    return years
  end

  def arrived_year(year)
    if self.arrived_on < Date.new(year,1,1)
      Date.new(year,1,1)
    else
      self.arrived_on
    end
  end

  def left_year(year)
    if self.left_on > Date.new(year,12,31)
      Date.new(year,12,31)
    else
      self.left_on
    end
  end

  def duration
    (left_on - arrived_on).to_i + 1
  end

  def duration_within_year(year)
    (left_year(year) - arrived_year(year)).to_i + 1
  end

  def overlapping_trips
    trips = Trip.all.select{|trip| (self.arrived_on..self.left_on).cover?(trip.arrived_on) && (self.arrived_on..self.left_on).cover?(trip.left_on) && trip != self}
    return trips
  end

end
