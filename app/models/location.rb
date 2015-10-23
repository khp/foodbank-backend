class Location < ActiveRecord::Base
  has_many :hours

  validates :name, presence: true
  validates :address, presence: true
end
