class Question
def initialize
  @number1 = rand(1...10)
  @number2 = rand(1...10)
  @answer = number1 + number2
end

def create_question
"What does #{number1} + #{number2} equal?"
end

def question_correct
"YES! You are correct"
end

def question_incorrect
"Seriously? No!"
end

attr_reader :number1, :number2, :answer

end

question2 = Question.new

# puts "Your number is #{question2.number1}"
p question2
