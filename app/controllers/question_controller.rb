class QuestionController < ApplicationController

	def index
    	@question = Question.all
  	end

	def new
		@question = Question.new()
	end

	def create
		@question = Question.new(question_params)
		if @question.save
			redirect_to questions_path, notice: "Pergunt com sucesso"
		else
			render :new
		end
	end

	def show
		@question = Question.find(params[:id])
	end

	private

	def question_params
		params.require(:question).permit(:title, :description, :problem)
	end
end
