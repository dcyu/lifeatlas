class Stop < ActiveRecord::Base
  belongs_to :destination
  belongs_to :aspiration
end
