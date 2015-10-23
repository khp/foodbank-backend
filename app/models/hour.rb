class Hour < ActiveRecord::Base
  belongs_to :location
  
  validates :start, presence: true
  validates :end, presence: true

end
