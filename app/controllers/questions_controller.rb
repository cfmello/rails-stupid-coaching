class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:input]
    @answer = if @question.start_with?('Milene')
                'Não termine com "É isso..."'
              elsif @question.end_with?('?')
                'Silly question, get dressed and go to work!'
              elsif @question == 'I am going to work right now!'
                'Great!'
              else
                'I don\'t care, get dressed and go to work!'
              end
  end
end
