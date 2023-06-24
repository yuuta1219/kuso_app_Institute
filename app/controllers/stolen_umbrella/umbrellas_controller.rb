class StolenUmbrella::UmbrellasController < StolenUmbrella::BaseController

  def index
    unless cookies[:video_url]
      s3_service = S3Service.new
      cookies[:video_url] = { value: s3_service.fetch_video_url('umbrellas/151426 (720p).mp4'), expires: 6.days.from_now }
    end
    @umbrellas = Umbrella.order(created_at: :desc).limit(30)
    @umbrella = Umbrella.new
  end

  def create
    @umbrella = Umbrella.create(umbrella_params)
    if @umbrella.save
      redirect_to stolen_umbrella_umbrellas_path, notice: 'Umbrella was successfully created.'
    else
      render turbo_stream: turbo_stream.replace('error_messages', partial: 'shared/error_messages', locals: { object: @umbrella })
    end
  end

  private

  def umbrella_params
    params.require(:umbrella).permit(:memory)
  end
end
