class ApplicationController < ActionController::Base

  private
  def prisoner_go_to_prison
    redirect_to purgatory_path if current_user && current_user.prisoner?
  end
  def not_prison
    redirect_to root_path unless current_user || current_user && current_user.prisoner? 
  end
end
