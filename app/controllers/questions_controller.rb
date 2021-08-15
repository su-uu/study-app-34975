class QuestionsController < ApplicationController
  def index
  end

  def new
    @question = Question.new
  end

  def create
  end

  private
  def question_params
    params.require(:question).permit(:title, :text, :answer, :image).merge(user_id: current_user.id)
  end

end