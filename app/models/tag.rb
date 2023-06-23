class Tag < ApplicationRecord
  has_many :songs, through: :song_tags
  has_many :song_tags, dependent: :destroy

  validates :title, presence: true
end
