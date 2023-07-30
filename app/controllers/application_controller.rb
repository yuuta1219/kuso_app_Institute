class ApplicationController < ActionController::Base
  before_action :set_ogp

  def set_ogp
    set_meta_tags twitter: {
      card: "summary_large_image",
      url: "https://kuso-app-institute.magia.runteq.jp/",
      title: "K.U.S.O.AppInstitute",
      image: "https://kuso-app-institute.magia.runteq.jp/images/ogp1.png",
      description: "クソアプリ研究所を発見したよ！"
    }
  end
end
