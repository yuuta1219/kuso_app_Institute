class Song < ApplicationRecord
  belongs_to :song_tag

  validates :title, presence: true
  validates :body, presence: true
end
