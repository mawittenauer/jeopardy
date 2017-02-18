class AnswersController < ApplicationController
  before_action :require_user
  
  def create
    @category = Category.find(params[:category_id])
    @answer = Answer.new(answer_params)
    @answer.category = @category
    @game = @category.game
    
    if @answer.valid?
      if @answer.category.answers.count < 5
        @answer.save
        redirect_to @game
      else
        flash.now[:danger] = "You cannot create more than five answers per category"
        render 'games/show'
      end
    else
      render 'games/show'
    end
  end
  
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to @answer.category.game
  end
  
  private
  def answer_params
    params.require(:answer).permit(:content)
  end
end
