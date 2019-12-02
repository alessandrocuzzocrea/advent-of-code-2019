# frozen_string_literal: true

require './ShipComputer'
require 'byebug'

computer = ShipComputer.new
computer.load(File.read('input'))
computer.poke(1, 12)
computer.poke(2, 2)
computer.run

p computer

# part 2
99.times do |noun|
  99.times do |verb|
    computer = ShipComputer.new
    computer.load(File.read('input'))
    computer.poke(1, noun)
    computer.poke(2, verb)
    computer.run
    if computer.peek(0) == 19_690_720
      p "noun #{noun}, verb #{verb}"
      p "res #{100 * noun + verb}"
    end
  end
end
