# frozen_string_literal: true

require './ShipComputer'
require 'byebug'

computer = ShipComputer.new
computer.load(File.read('input'))
computer.poke(1, 12)
computer.poke(2, 2)
computer.run

p computer
