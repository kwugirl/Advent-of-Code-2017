require 'minitest/autorun'
require './day_1'

class Day1Test < Minitest::Test

  def test_simple_solve
    assert_equal 3, simple_solve("1122")
    assert_equal 4, simple_solve("1111")
    assert_equal 0, simple_solve("1234")
    assert_equal 9, simple_solve("91212129")
  end

  def test_process_input
    assert_equal [1,1,2,2,1], process("1122")
  end

  def test_round_the_world_solve
    assert_equal 6, round_the_world_solve("1212")
    assert_equal 0, round_the_world_solve("1221")
    assert_equal 4, round_the_world_solve("123425")
    assert_equal 12, round_the_world_solve("123123")
    assert_equal 4, round_the_world_solve("12131415")
  end
end
