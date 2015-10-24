class Location < ActiveRecord::Base
  has_many :hours

  validates :name, presence: true
  validates :address, presence: true

  def as_json(options={})
    options[:except] ||= [:id, :created_at, :updated_at]
    options[:include] ||= { :hours => { :only => [:day, :start, :end, :crowd] } }
    super(options)
  end
end
