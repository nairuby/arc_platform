class UsersChapter < ApplicationRecord
  belongs_to :chapter
  belongs_to :user
end
