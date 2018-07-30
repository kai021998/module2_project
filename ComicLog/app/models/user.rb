class User < ApplicationRecord
  has_many :user_issues
  has_many :issues, through: :user_issues
  has_many :comics, through: :issues
end
