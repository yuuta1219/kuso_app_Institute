class SongTag < ApplicationRecord
  belongs_to :song, dependent: :destroy
  belongs_to :tag, dependent: :destroy
end
