class ThemesController < ApplicationController
  def select
    beybug
    theme = ThemeChecker.check_theme(params[:theme])
    byebug
    if theme
      cookies[:theme] = theme
      @theme_color = theme
    else
      redirect_to root_path
    end
  end
end