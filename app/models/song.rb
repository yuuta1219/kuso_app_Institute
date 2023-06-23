class Song < ApplicationRecord
  has_many :tags, through: :song_tags
  has_many :song_tags, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true
end
