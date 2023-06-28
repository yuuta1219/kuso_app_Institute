class Song < ApplicationRecord
  has_many :song_tags, dependent: :destroy
  has_many :tags, through: :song_tags

  validates :title, presence: true
  validates :body, presence: true

  def self.select_song(tag_titles)
    selected_tag_ids = Tag.where(title: tag_titles).pluck(:id) || []
    if selected_tag_ids.empty? || selected_tag_ids.size == Tag.count
      order("RANDOM()").first
    else
      joins(:tags)
        .group('songs.id')
        .select('songs.*, COUNT(tags.id) as tag_count')
        .having('COUNT(tags.id) = ?', selected_tag_ids.size)
        .where(tags: { id: selected_tag_ids })
        .where('songs.id NOT IN (?)', joins(:tags).where.not(tags: { id: selected_tag_ids }).select(:id))
        .first ||
        joins(:song_tags)
        .where(song_tags: { tag_id: selected_tag_ids })
        .group('songs.id')
        .select('songs.*, COUNT(song_tags.tag_id) as tag_count')
        .order('tag_count DESC, RANDOM()')
        .first
    end
  end

  def self.fetch_spotify_song(title, search_term="aespa")
    track = RSpotify::Track.search("#{title} #{search_term}").first
    {
      title: track.name,
      album_art: track.album.images.first['url'],
      id: track.id
    }
  end
end
