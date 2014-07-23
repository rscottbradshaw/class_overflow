class AnswersController < ApplicationController
  respond_to :html
  def index
    @answers = Answer.all
    respond_with @answers
  end

  def new
    @answers = Answer.new
    respond_with @answers
  end

  def create
    @answers = Answer.new(question_params)

    @answers.save
    flash[:notice] = 'Answer Added'
    respond_with @answers, location: answers_path
    # above 3 lines same as commented below
    # if @answers.save
    #   redirect_to answers_path, notice: 'Answer Added'
    # else
    #   render :new
    #   end
  end

  private
  def question_params
    params.require(:answer).permit :title, :content
  end
end