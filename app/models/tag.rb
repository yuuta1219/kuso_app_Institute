class Tag < ApplicationRecord
  belongs_to :song_tag

  validates :title, presence: true
end
