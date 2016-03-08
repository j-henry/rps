require 'minitest/autorun'
require './rps'

class RpsTest < Minitest::Test
  def test_two_players
    x = Player.new
    y = Player.new
    assert x.is_a? Player#, "#{x.inspect}"
    assert y.is_a? Player#, "#{y.inspect}"
  end

  def test_possible_moves
    x = Game.new
    x.moves = ["rock", "paper", "scissors"]
  end

  def test_human_player_input
    skip
    person = Player.new
    assert person.get_move
  end

  def test_valid_move
    skip
    x = Game.new
    person = Player.new
    person.get_move
    assert x.moves.include?(person.move), "#{x.inspect} #{person.move.inspect}"
  end

  def test_cpu_player_input
    x = Game.new
    cpu = Computer.new
    cpu.get_move(x.moves)
    assert x.moves.include?(cpu.move), "#{x.inspect} #{cpu.move.inspect}"
  end

  def test_round
    skip
    x = Game.new
    assert x.round
    assert x.p1.move
    puts x.p1.move
    assert x.p2.move
    puts x.p2.move
  end

  def test_scissors_rock
    x = Game.new
    assert x.compare("scissors", "rock") == "P2 wins!"
  end

  def test_scissors_paper
    x = Game.new
    assert x.compare("scissors", "paper") == "P1 wins!"
  end

  def test_scissors_scissors
    x = Game.new
    assert x.compare("scissors", "scissors") == "A draw!"
  end


end
