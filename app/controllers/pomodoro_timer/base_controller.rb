class PomodoroTimer::BaseController < ApplicationController
  before_action :pmodoro_theme_color
  
  private
  
  def pmodoro_theme_color
    @theme_color = "luxury"
  end
end
