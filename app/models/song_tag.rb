class SongTag < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :tags, dependent: :destroy
end
