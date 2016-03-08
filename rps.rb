
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
    self.moves = %w(paper scissors rock)
    self.p1 = p1
    self.p2 = p2
  end

  def round
    p1.get_move
    p2.get_move(moves)
  end

  def compare(p1choice, p2choice)
    # puts p1choice
    # puts p2choice
    if self.moves.index(p1choice) == self.moves.index(p2choice) - 2
      "P1 wins!"
    elsif self.moves.index(p1choice) == self.moves.index(p2choice) - 1
      "P2 wins!"
    else
      "A draw!"
    end
  end

end
