class Aespa::SongsController < Aespa::BaseController
  def index
    unless cookies[:aespa_video_url]
      s3_service = S3Service.new
      cookies[:aespa_video_url] = { value: s3_service.fetch_video_url('umbrellas/va2.mp4'), expires: 6.days.from_now }
    end
    if params[:tag_titles]
      @song = Song.select_song(params[:tag_titles])
      redirect_to aespa_song_path(@song.title)
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
end
