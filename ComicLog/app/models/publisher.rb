class Publisher < ApplicationRecord
  has_many :comics
  has_many :issues, through: :comics
end
