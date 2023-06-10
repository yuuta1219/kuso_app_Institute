class Aidoji::BaseController < ApplicationController
  before_action :calorie_theme_color

  private

  def calorie_theme_color
    @theme_color = "valentine"
  end
end
