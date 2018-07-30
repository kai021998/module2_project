class Comic < ApplicationRecord
  has_many :user_comics
  has_many :users, through: :user_comics
  has_many :issues
  belongs_to :publisher
end
