class TopsController < ApplicationController
  before_action :theme_color
  
  def top
    @color_select = "approval"
    @hidden = "hidden"
  end

  def terms; end

  def privacy_policy; end

  def treatment; end

  def saikyouni_omoroi_app
    @theme_color = "cupcake"
  end

  private
  def theme_color
    @theme_color = cookies.permanent[:selectedTheme]
  end
end
