class User < ApplicationRecord
  has_many :user_issues
  has_many :issues, through: :user_issues
  has_many :comics, through: :issues

  validates :name, presence: { case_sensitive: false }
  has_secure_password

  #Iterating over all comics a user owns, returning an array displaying unique titles
  def comics_owned
    comics_array = self.comics.map do |comic|
      comic.title
    end
    comics_array.uniq
  end

  #Taking an argument of a title string, and selecting all issues a user owns that match the title name
  def title_issues(title)
    self.issues.select do |issue|
      issue.comic.title == title
    end
  end

end
