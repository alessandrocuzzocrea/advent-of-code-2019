# # frozen_string_literal: true

# require 'minitest/autorun'
# require './day2'
# require './ShipComputer'
# require 'byebug'

# class ShipComputerTest < Minitest::Test
#   TEST_PROGRAM_1_INITIAL_STATES = [
#     '1,9,10,3,2,3,11,0,99,30,40,50',
#     '1,0,0,0,99',
#     '2,3,0,3,99',
#     '2,4,4,5,99,0',
#     '1,1,1,4,99,5,6,0,99'
#   ].freeze

#   TEST_PROGRAM_1_FINAL_STATES = [
#     '3500,9,10,70,2,3,11,0,99,30,40,50',
#     '2,0,0,0,99',
#     '2,3,0,6,99',
#     '2,4,4,5,99,9801',
#     '30,1,1,4,2,5,6,0,99'
#   ].freeze

#   def test_1
#     TEST_PROGRAM_1_INITIAL_STATES.each_with_index do |program, j|
#       computer = ShipComputer.new
#       computer.load(program)
#       computer.run
#       TEST_PROGRAM_1_FINAL_STATES[j].split(',').map(&:to_i).each_with_index do |value, i|
#         assert_equal(value, computer.peek(i))
#       end
#     end
#   end
# end
