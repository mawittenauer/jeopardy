class PagesController < ApplicationController
  def front
    redirect_to new_game_path if logged_in?
  end
end
