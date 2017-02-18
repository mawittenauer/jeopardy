class AnswersController < ApplicationController
  def create
    @category = Category.find(params[:category_id])
    @answer = Answer.new(answer_params)
    @answer.category = @category
    @game = @category.game
    
    if @answer.save
      redirect_to @game
    else
      render 'games/show'
    end
  end
  
  private
  def answer_params
    params.require(:answer).permit(:content)
  end
end
