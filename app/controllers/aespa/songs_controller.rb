class Aespa::SongsController < Aespa::BaseController
  def index
    unless cookies[:aespa_video_url]
      s3_service = S3Service.new
      cookies[:aespa_video_url] = { value: s3_service.fetch_video_url('umbrellas/va2.mp4'), expires: 6.days.from_now }
    end
  end

  def show
    @song = Song.find_by_title(params[:title])
    if @song.title == "'Till We Meet Again"
      track = RSpotify::Track.search("#{@song.title} spicy aespa").first
    else
      track = RSpotify::Track.search("#{@song.title} aespa").first
    end
    @spotify_song = {
      title: track.name,
      album_art: track.album.images.first['url'],
      id: track.id
    }
    set_meta_tags twitter: {
      card: "summary",
      url: CGI.escape(request.original_url),
      title: "A.I.SongSearcher",
      image: @spotify_song[:album_art],
      description: "AIが私に選んだおすすめの楽曲は、aespaの#{@spotify_song[:title]}"
    }
  end

  def aespa_no_1
    selected_tag_ids = Tag.where(title: params[:tag_titles]).pluck(:id) || []
    if selected_tag_ids.empty? || selected_tag_ids.size == Tag.count
      @song = Song.order("RANDOM()").first
    else
      if @song = Song.joins(:tags).group('songs.id').select('songs.*, COUNT(tags.id) as tag_count').having('COUNT(tags.id) = ?', selected_tag_ids.size).where(tags: { id: selected_tag_ids }).where('songs.id NOT IN (?)', Song.joins(:tags).where.not(tags: { id: selected_tag_ids }).select(:id)).first
      else
        @song = Song.joins(:song_tags).where(song_tags: { tag_id: selected_tag_ids }).group('songs.id').select('songs.*, COUNT(song_tags.tag_id) as tag_count').order('tag_count DESC, RANDOM()').first
      end
    end
    redirect_to aespa_song_path(@song.title)
  end
end
