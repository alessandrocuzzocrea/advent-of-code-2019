require 'minitest/autorun'
require './day1'
require 'byebug'

class Day1Test < Minitest::Test
  def test_day1_part1
    assert_equal 654,   Day1.calc_fuel(1969)
    assert_equal 33583, Day1.calc_fuel(100756)
  end

  def test_day1_part2
    assert_equal 2,     Day1.calc_fuel_part2(14)
    assert_equal 966,   Day1.calc_fuel_part2(1969)
    assert_equal 50346, Day1.calc_fuel_part2(100756)
  end
end
