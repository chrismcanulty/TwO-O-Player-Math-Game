class Player
  def initialize(name)
    @name = name
    @lives = 1
  end

def player_lives
 "#{@lives}/3"
end

def lose_life
  @lives -= 1
end

  attr_reader :name

  attr_accessor :lives
end
