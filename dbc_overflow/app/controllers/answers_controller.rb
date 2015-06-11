class AnswersController < ApplicationController

  def new
    @new_answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      render :show
    else
      render :new
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:title, :content, :question_id)
    end


end
