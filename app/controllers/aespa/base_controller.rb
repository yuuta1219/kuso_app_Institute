class Aespa::BaseController < ApplicationController
  before_action :aespa_theme_color

  private

  def aespa_theme_color
    @theme_color = "aespa"
  end
end
