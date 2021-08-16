class AnswersController < ApplicationController
  def index
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
  end
end
