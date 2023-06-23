class Tag < ApplicationRecord
  has_many :song_tags, dependent: :destroy
  has_many :songs, through: :song_tags

  validates :title, presence: true
end
