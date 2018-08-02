class User < ApplicationRecord
  has_many :user_issues
  has_many :issues, through: :user_issues
  has_many :comics, through: :issues

  validates :name, presence: { case_sensitive: false }
  has_secure_password
  accepts_nested_attributes_for :issues

  #Iterating over all comics a user owns, returning an array displaying unique titles
  def comics_owned
    comics_array = self.comics.map do |comic|
      comic
    end
    comics_array.uniq
  end

  #Taking an argument of a title string, and selecting all issues a user owns that match the title name
  def title_issues(title)
    self.issues.select do |issue|
      issue.comic.title == title
    end
  end

  def unowned_issues(comic)
    comic.issues.select do |issue|
      !self.issues.include?(issue)
    end
  end

  # <ActionController::Parameters {"0"=>{"id"=>"1", "issues"=>[""]}, "1"=>{"id"=>"2", "issues"=>["", "1", "19"]}, "2"=>{"id"=>"3", "issues"=>[""]}, "3"=>{"id"=>"4", "issues"=>["", "1"]}, "4"=>{"id"=>"5", "issues"=>["", "19"]}, "5"=>{"id"=>"6", "issues"=>["", "17"]}} permitted: false>
  #
  # relevant_params = params[:user][:issues_attributes]
  #
  # relevant_params.each do |k, v|
  # k
  #
  # Comic.find(relevant_params["1"][:id]).issues.find_by(issue_number: releveant_params["1"][:issues][1])


end
