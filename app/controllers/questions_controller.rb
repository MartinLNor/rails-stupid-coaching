class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @get = params[:question]
    if @get == 'I am going to work'
      @answer = 'Great!'
    elsif @get.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
