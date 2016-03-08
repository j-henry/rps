
class Player
  attr_accessor :move

  def get_move(possible_moves=nil)
    self.move = gets.chomp.downcase
  end

end

class Computer < Player
  def get_move(possible_moves)
    self.move = possible_moves.sample
  end
end

class Game
  attr_accessor :moves, :p1, :p2

  def initialize(p1=Player.new,p2=Computer.new)
    self.moves = %w(rock paper scissors)
    self.p1 = p1
    self.p2 = p2
  end

  def possibel_moves

  end

  def get_move
    gets
  end

  def round
    p1.get_move
    p2.get_move
  end

end
