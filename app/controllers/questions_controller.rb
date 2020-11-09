class QuestionsController < ApplicationController
    def ask
    end

    def answer
      @question_coach = params[:question]
      if @question_coach == "I am going to work"
         @answer_coach = "Great!"
      elsif @question_coach.include?("?")
        @answer_coach = "Silly question, get dressed and go to work!"
      else @answer_coach = "I don't care, get dressed and go to work"
      end
    end
end
