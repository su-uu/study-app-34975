class AnswersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]
  before_action :set_question, only: [:index, :create]

  def index
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to root_path
    else
      render :index
    end
  end

  def show
  end

  private

  def answer_params
    params.require(:answer).permit(:input_answer).merge(user_id: current_user.id, question_id: params[:question_id])
  end

  def set_question
    @question = Question.find(params[:question_id])
  end
end
