class AnswersController < ApplicationController
  respond_to :html
  def index
    @answers = Answer.all
    respond_with @answers
  end

  def new
    @answer = Answer.new
    respond_with @answer
  end

  def create
    @answer = Answer.new(answer_params)

    @answer.save
    flash[:notice] = 'Answer Added'
    respond_with @answer, location: answers_path
    # above 3 lines same as commented below
    # if @answers.save
    #   redirect_to answers_path, notice: 'Answer Added'
    # else
    #   render :new
    #   end
  end

  private
  def answer_params
    params.require(:answer).permit :title, :content
  end
end