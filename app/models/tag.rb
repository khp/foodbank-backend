class Tag < ActiveRecord::Base
  has_and_belongs_to_many :newsposts

  def as_json(options={})
    options[:except] ||= [:id, :created_at, :updated_at]
    super(options)
  end
end
