class TalkDeckButler::BaseController < ApplicationController
  before_action :talk_deck_butler_color

  private

  def talk_deck_butler_color
    @theme_color = "cupcake"
  end
end
