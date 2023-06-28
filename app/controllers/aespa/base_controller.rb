class Aespa::BaseController < ApplicationController
  before_action :aespa_theme_color
  before_action :set_video_url

  private

  def aespa_theme_color
    @theme_color = "aespa"
  end
  def set_video_url
    unless cookies[:aespa_video_url]
      s3_service = S3Service.new
      cookies[:aespa_video_url] = { value: s3_service.fetch_video_url('umbrellas/va2.mp4'), expires: 6.days.from_now }
    end
  end
end
