class StolenUmbrella::BaseController < ApplicationController
  before_action :calorie_theme_color

  private

  def calorie_theme_color
    @theme_color = "pastel"
  end
end
