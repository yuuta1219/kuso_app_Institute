class Song < ApplicationRecord
  has_many  :song_tags

  validates :title, presence: true
  validates :body, presence: true
end
