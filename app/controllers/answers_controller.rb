class AnswersController < ApplicationController
  def index
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:input_answer).merge(user_id: current_user.id, question_id: params[:question_id])
  end
end
