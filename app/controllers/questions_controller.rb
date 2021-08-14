class QuestionsController < ApplicationController
  def index
  end

  def question_params
    params.require(:question).permit(:title, :text, :answer, :image).merge(user_id: current_user.id)
end
