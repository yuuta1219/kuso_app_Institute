class ThemesController < ApplicationController
  def select
    theme = ThemeChecker.check_theme(params[:selectedTheme])
    if theme
      cookies.permanent[:selectedTheme] = theme
      redirect_to request.referer
    else
      redirect_to root_path
    end
  end
end