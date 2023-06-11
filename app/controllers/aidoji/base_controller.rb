class Aidoji::BaseController < ApplicationController
  before_action :aidoji_theme_color

  private

  def aidoji_theme_color
    @theme_color = "valentine"
  end
end
