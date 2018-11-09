class Author < ApplicationRecord
  has_and_belongs_to_many :papers
  validates :last_name, presence: true

  def name
    return self.first_name + ' ' + self. last_name
  end

  def paper_ids
    papers.collect {| paper | paper.id }
  end
end
