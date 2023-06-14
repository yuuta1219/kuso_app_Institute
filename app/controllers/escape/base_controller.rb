class Escape::BaseController < ApplicationController
  before_action :escape_theme_color

  private

  def escape_theme_color
    @theme_color = "coffee"
  end

end
