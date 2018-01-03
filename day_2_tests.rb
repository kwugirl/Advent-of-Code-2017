require 'minitest/autorun'
require './day_2'

class Day2Test < Minitest::Test

  def test_calculate_row_checksum
    assert_equal 8, calculate_row_checksum("5 1 9 5")
    assert_equal 4, calculate_row_checksum("7 5 3")
    assert_equal 6, calculate_row_checksum("2 4 6 8")
  end

  def test_calculate_file_checksum
    assert_equal 18, calculate_file_checksum("day_2_test_input.txt")
  end
end
