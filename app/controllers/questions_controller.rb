class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  def index
    @question = Question.all.order('created_at DESC')
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @question.update(question_params)
      redirect_to question_path
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    redirect_to root_path
  end

  private

  def question_params
    params.require(:question).permit(:title, :text, :hide_answer, :image).merge(user_id: current_user.id)
  end

  def set_question
    @question = Question.find(params[:id])
  end

  def move_to_index
    redirect_to root_path if current_user.id != @question.user_id
  end
end
