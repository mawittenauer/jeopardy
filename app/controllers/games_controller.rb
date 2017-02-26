class GamesController < ApplicationController
  before_action :require_user
  before_action :find_game, only: [:show]
  before_action :require_creator, only: [:show]
  
  def index
    @games = Game.where("plays > ?", 0).order("plays DESC")
  end
  
  def new
    @game = Game.new
  end
  
  def show
  end
  
  def create
    @game = Game.new(game_params)
    
    @category_one = Category.new(name: params[:game][:category][0], game: @game)
    @category_two = Category.new(name: params[:game][:category][1], game: @game)
    @category_three = Category.new(name: params[:game][:category][2], game: @game)
    @category_four = Category.new(name: params[:game][:category][3], game: @game)
    @category_five = Category.new(name: params[:game][:category][4], game: @game)
    @category_six = Category.new(name: params[:game][:category][5], game: @game)
    
    if @game.valid? && @category_one.valid? && @category_two.valid? && 
       @category_three.valid? && @category_four.valid? && @category_five.valid? && @category_six.valid?
      
      @game.user_id = current_user.id
      
      @game.save
      @category_one.save
      @category_two.save
      @category_three.save
      @category_four.save
      @category_five.save
      @category_six.save
      
      redirect_to @game
    else
      flash.now[:danger] = "You must enter a game name and six categories"
      render :new
    end
  end
  
  def game_play
    session[:return_to] ||= request.referer
    @game = Game.find(params[:id])
    if @game.complete?
      @game.increment!(:plays)
    else
      flash[:danger] = "That game is not ready to play."
      if @game.user.id == current_user.id
        flash[:danger] += " Make sure each category has 5 answers."
        redirect_to @game
      else
        redirect = session.delete(:return_to)
        redirect_to redirect
      end
    end
  end
  
  private
  def game_params
    params.require(:game).permit(:name)
  end
  
  def find_game
    @game = Game.find(params[:id])
  end
  
  def require_creator
    if @game.user.id != current_user.id
      flash[:danger] = "That is not your game to edit."
      redirect_to root_path
    end
  end
end
