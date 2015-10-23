class Newspost < ActiveRecord::Base
	has_and_belongs_to_many :tags
  validates :content, presence: true
  validates :poster, presence: true, length: { minimum: 3, maximum: 15 }

  def as_json(options={})
    options[:except] ||= [:id]
    super(options)
  end
end
