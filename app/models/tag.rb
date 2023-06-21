class Tag < ApplicationRecord
  has_many :song_tags

  validates :title, presence: true
end
