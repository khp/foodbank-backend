class Tag < ActiveRecord::Base
  belongs_to :newspost

  def as_json(options={})
    options[:except] ||= [:id, :created_at, :updated_at]
    super(options)
  end
end
