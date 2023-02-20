class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def question?(string)
    string.nil? ? false : string.end_with?('?')
  end

  def coach_answer(string)
    if question?(string)
      'Silly question, get dressed and go to work!'
    elsif string == 'I am going to work'
      'Great!'
    else
      'I dont care, get dressed and go to work!'
    end
  end
end
