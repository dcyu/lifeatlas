class Word < ActiveRecord::Base
  belongs_to :block_list
  validates :english, uniqueness: true
end
