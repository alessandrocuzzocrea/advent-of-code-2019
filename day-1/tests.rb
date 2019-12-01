require 'minitest/autorun'
require './day1'

class Day1Test < Minitest::Test
  def test_loller
    assert_equal 654,   Day1.calc_fuel(1969)
    assert_equal 33583, Day1.calc_fuel(100756)
  end
end
