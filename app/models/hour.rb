class Hour < ActiveRecord::Base
  belongs_to :location

  validates :start, presence: true
  validates :end, presence: true
  validate :start_must_be_before_end

  def as_json(options = {})
    strftime('%H:%M')
  end

  private
  def start_must_be_before_end
    errors.add(:start, "must be before end time") unless
        self.start < self.end
  end 
end
