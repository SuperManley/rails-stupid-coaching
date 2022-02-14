class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    # @answers = ['Great!', "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    if @question == "I am going to work right now!"
      @answers = "Great!"
    elsif params[:question].end_with?('?')
      @answers = "Silly question, get dressed and go to work!"
    else
      @answers = "I don't care, get dressed and go to work!"
    end
  end

end

# rails takes input from user via form in ask view
# take that input and store it in a variable
# then I want to implement a conditional satement that returns coaches answer
# Then I want to display the answer to the user

# def coach_answer(your_message)
#   if your_message == "I am going to work right now!"
#     return ""
#   elsif your_message.end_with?('?')
#     return "Silly question, get dressed and go to work!"
#   else
#     return "I don't care, get dressed and go to work!"
#   end
# end

# def coach_answer_enhanced(your_message)
#   case
#   when your_message == "I AM GOING TO WORK RIGHT NOW!"
#     return ""
#   when your_message.upcase == your_message
#     return "I can feel your motivation! #{coach_answer(your_message)}"
#   end
#   coach_answer(your_message)
# end
