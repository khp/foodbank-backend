class Newspost < ActiveRecord::Base
	has_and_belongs_to_many :tags
  validates :content, presence: true
  validates :date_posted, presence: true
  validates :poster, presence: true, length: { minimum: 3, maximum: 15 }
end
