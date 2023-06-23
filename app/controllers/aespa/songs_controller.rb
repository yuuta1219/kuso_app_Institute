class Aespa::SongsController < Aespa::BaseController
  def index; end

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
    set_meta_tags og: {
      url: CGI.escape(request.original_url),
      title: "A.I.SongSearcher",
      image: @spotify_song[:album_art],
      description: "AIが私に選んだおすすめの楽曲は、aespaの#{@spotify_song[:title]}"
    }
  end

  def aespa_no_1
    selected_tag_ids = params[:tag_ids].present? ? Tag.where(title: params[:tag_ids]).pluck(:id) : []
    if selected_tag_ids.empty? || selected_tag_ids.size == Tag.count
      @song = Song.order("RANDOM()").first
    elsif @song = Song.joins(:tags).group('songs.id').select('songs.*, COUNT(tags.id) as tag_count').having('COUNT(tags.id) = ?', selected_tag_ids.size).where(tags: { id: selected_tag_ids }).where('songs.id NOT IN (?)', Song.joins(:tags).where.not(tags: { id: selected_tag_ids }).select(:id)).first
    else
      @song = Song.joins(:tags).where(tags: { id: selected_tag_ids }).group("songs.id").having("COUNT(*) = ?", selected_tag_ids.size).order("RANDOM()").first
      selected_tag_ids.size.downto(1) do |i|
        break if @song.present?
        selected_tag_ids.combination(i).each do |combination|
          @song = Song.joins(:tags).where(tags: { id: combination }).group("songs.id").having("COUNT(*) = ?", i).order("RANDOM()").first
          break if @song.present?
        end
      end
    end
    redirect_to aespa_song_path(@song.title)
  end
end
