class Issue < ApplicationRecord
  has_many :user_issues
  has_many :users, through: :user_issues
  belongs_to :comic

end
