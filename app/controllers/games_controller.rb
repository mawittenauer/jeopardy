class GamesController < ApplicationController
  def new
    @game = Game.new
  end
  
  def create
    @game = Game.new(game_params)
    
    @category_one = Category.new(name: params[:game][:category][0], game: @game)
    @category_two = Category.new(name: params[:game][:category][1], game: @game)
    @category_three = Category.new(name: params[:game][:category][2], game: @game)
    @category_four = Category.new(name: params[:game][:category][3], game: @game)
    @category_five = Category.new(name: params[:game][:category][4], game: @game)
    
    if @game.valid? && @category_one.valid? && @category_two.valid? && 
       @category_three.valid? && @category_four.valid? && @category_five.valid?
      
      @game.save
      @category_one.save
      @category_two.save
      @category_three.save
      @category_four.save
      @category_five.save
      
      redirect_to root_path
    else
      flash.now[:danger] = "You must enter a game name and 5 categories"
      render :new
    end
  end
  
  private
  def game_params
    params.require(:game).permit(:name)
  end
end
