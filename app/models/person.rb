class Person < ActiveRecord::Base
  has_many :meetings

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
