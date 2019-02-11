class QuestionsController < ApplicationController
  def ask
    # @question = params[:question]
  end

  def answer
    @question = params[:question]
    if question_mark? == true
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @answer = "Great"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def question_mark?
    @question = params[:question]
    question_mark = @question.gsub("?","!")
    @question != question_mark
  end
end

