class Escape::BaseController < ApplicationController
  before_action :escape_theme_color
  layout "game_layout"

  private

  def escape_theme_color
    @theme_color = "aespa"
  end

end
