class UserComic < ApplicationRecord
  belongs_to :user
  belongs_to :comics
end
