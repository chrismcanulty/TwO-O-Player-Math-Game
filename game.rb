# initializer for the game file calls question class

require 'pp'
require './players'
require './questions'

class Game

def initialize
@running = true
@turn = 0
@player1 = Player.new("Player 1")
@player2 = Player.new("Player 2")
@current_player = ""
# add current player instance variable here
end

def new_turn
  @turn += 1
end

def whos_turn
  if @turn % 2 != 0
  @current_player = @player1
  else @current_player = @player2
  end
end

def play_game

puts "Starting game"

loop do

  @question = Question.new
  self.new_turn
  self.whos_turn

puts "#{@current_player.name}: What does #{@question.number1} plus #{@question.number2} equal"
player_answer = gets.chomp

if Integer(player_answer) == @question.answer
  puts "#{@current_player.name}: #{@question.question_correct}"
else
  @current_player.lose_life
  puts "#{@current_player.name}: #{@question.question_incorrect}"
end

puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"

if @player1.lives == 0
  puts "Player 2 wins with a score of #{@player2.player_lives}"
  puts "----- GAME OVER -----"
  puts "Good bye!"
  break

elsif @player2.lives == 0
  puts "Player 1 wins with a score of #{@player1.player_lives}"
  puts "----- GAME OVER -----"
  puts "Good bye!"
  break

else
puts "----- NEW TURN -----"
end

end # end loop

end # end play_game

end # end class


game1 = Game.new

p game1.play_game
