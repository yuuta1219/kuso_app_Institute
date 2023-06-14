class Aidoji::BaseController < ApplicationController
  before_action :aidoji_theme_color

  private

  def aidoji_theme_color
    @theme_color = "cupcake"
  end
end
