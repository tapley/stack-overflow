class QuestionsController < ApplicationController
  def index
    @new_question = Question.new
    @questions = Question.all.order(created_at: :asc)
  end

  def new
    @new_question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to @question
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])

    @new_answer = Answer.new
    @answers = Answer.where(question_id: params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    redirect_to question_path
  end

  def destroy
    Question.destroy(params[:id])
    redirect_to questions_path
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:title, :content)
    end

end
