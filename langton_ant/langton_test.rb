require 'test/unit'

class Ant
  def initialize
    @position = [0,0]
  end

  def case
    :white
  end

  def position
    @position
  end

  def next_turn
    @position = [1,0]
  end

  def already_visited
    [0,0]
  end
end

class LangtonTest < Test::Unit::TestCase
  def test_start_on_white_case
    ant = Ant.new
    assert_equal :white, ant.case
  end
  
  def test_start_coordinates_are_x_0_y_0
    ant = Ant.new
    assert_equal [0,0], ant.position
  end

  def test_next_turn_ant_is_on_x_1_y_0
    ant = Ant.new
    ant.next_turn
    assert_equal [1,0], ant.position
  end

  def test_already_visited_case_coordinate_is_x0_y0
    ant = Ant.new
    ant.next_turn
    assert_equal [0,0], ant.already_visited
  end
end
