require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/ship'
require './lib/cell'
require './lib/board'


class BoardTest < MiniTest::Test
  def test_it_exists
    board = Board.new("Player one board")
    assert_instance_of Board, board
    assert_equal 16, board.cells.keys.count
  end

  def test_it_can_validate_coordinates
    board = Board.new("Player one board")
    assert_equal true, board.valid_coordinate?("A1")
    assert_equal true, board.valid_coordinate?("D4")
    assert_equal false, board.valid_coordinate?("A5")
    assert_equal false, board.valid_coordinate?("E1")
    assert_equal false, board.valid_coordinate?("A22")
  end


end
