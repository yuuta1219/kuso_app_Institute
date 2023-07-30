class TopsController < ApplicationController
  before_action :theme_color

  def top
    @color_select = "approval"
    set_meta_tags twitter: {
      card: "summary_large_image",
      url: "https://kuso-app-institute.magia.runteq.jp/",
      title: "K.U.S.O.AppInstitute",
      image: ["https://kuso-app-institute.magia.runteq.jp/images/ogp1.png", "https://kuso-app-institute.magia.runteq.jp/images/ogp2.png"].sample,
      description: "クソアプリ研究所を発見したよ！"
    }
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
