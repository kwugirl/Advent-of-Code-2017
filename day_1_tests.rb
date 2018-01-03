require 'minitest/autorun'
require './day_1'

class Day1Test < Minitest::Test

  def test_given_examples
    assert_equal 3, solve("1122")
    assert_equal 4, solve("1111")
    assert_equal 0, solve("1234")
    assert_equal 9, solve("91212129")
  end

  def test_process_input
    assert_equal [1,1,2,2,1], process("1122")
  end

end
