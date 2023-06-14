class StolenUmbrella::BaseController < ApplicationController
  before_action :stolen_umbrella_theme_color

  private

  def stolen_umbrella_theme_color
    @theme_color = "pastel"
  end
end
