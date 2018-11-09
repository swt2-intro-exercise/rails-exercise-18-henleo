class Paper < ApplicationRecord
  validates :title, presence: true
  validates :venue, presence: true
  validates :year, presence: true
  validate :year_type

  private
  def year_type
    errors.add(:year, 'type must be integer') unless
      year.is_a? Integer and year > 0
  end
end
