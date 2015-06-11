class AnswersController < ApplicationController

  def new
    @new_answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      # render :show
      redirect_to @answer
    else
      render :new
    end
  end

  def show
    @answer = Answer.find(params[:id])
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:title, :content, :question_id)
    end


end
