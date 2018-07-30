class Comic < ApplicationRecord
  has_many :issues
  has_many :users, through: :issues
  belongs_to :publisher
end
