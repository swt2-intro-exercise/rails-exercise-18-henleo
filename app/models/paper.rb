class Paper < ApplicationRecord
  has_and_belongs_to_many :authors
  validates :title, presence: true
  validates :venue, presence: true
  validates :year, presence: true
  validate :year_type

  def author_ids
    authors.collect {| author | author.id }
  end

  private
  def year_type
    errors.add(:year, 'type must be integer') unless
      year.is_a? Integer and year > 0
  end
end
