class Comic < ApplicationRecord
  has_many :issues
  has_many :users, through: :issues
  belongs_to :publisher

  def self.all_titles
    comics_array = all.map do |comic|
      comic.title
    end
    comics_array.uniq
  end

  def title_issues(title)
    self.issues.select do |issue|
      issue.comic.title == title
    end
  end

end
