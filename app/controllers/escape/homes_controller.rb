class Escape::HomesController < Escape::BaseController
  def top; end

  def index
    s3_service = S3Service.new
    @video_url = s3_service.fetch_video_url('umbrellas/glitch_-_27706 (1080p).mp4')
  end
end
