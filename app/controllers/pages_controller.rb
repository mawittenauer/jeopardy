class PagesController < ApplicationController
  before_action :require_user, only: [:my_games]
  
  def front
    redirect_to my_games_path if logged_in?
  end
  
  def my_games
    @games = current_user.games
  end
end
