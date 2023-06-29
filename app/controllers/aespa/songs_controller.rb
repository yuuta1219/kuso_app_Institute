class Aespa::SongsController < Aespa::BaseController
  skip_before_action :set_video_url, only: :show

  def index; end

  def aespa_no_1
      @song = Song.select_song(params[:tag_titles])
      redirect_to aespa_song_path(@song.title)
  end

  def show
    @song = Song.find_by_title(params[:title])
    search_term = @song.title == "'Till We Meet Again" ? "spicy aespa" : "aespa"
    @spotify_song = Song.fetch_spotify_song(@song.title, search_term)

    set_meta_tags twitter: {
      card: "summary",
      url: CGI.escape(request.original_url),
      title: "A.I.SongSearcher",
      image: @spotify_song[:album_art],
      description: "AIが私に選んだおすすめの楽曲は、aespaの#{@spotify_song[:title]}"
    }
  end
end
