class TopsController < ApplicationController
  def top
    @theme_color = "winter"
  end
  def saikyouni_omoroi_app
    @theme_color = "cupcake"
  end
end
