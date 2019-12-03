# frozen_string_literal: true

# require './ShipComputer'
require 'set'
require 'byebug'

Tile = Struct.new(:x, :y)

WIRE_1 = 'R8,U5,L5,D3'
@wire_1_curr_position = Tile.new(0, 0)
@wire_1_set = Set.new

WIRE_2 = 'U7,R6,D4,L4'
@wire_2_set = Set.new
@wire_2_curr_position = Tile.new(0, 0)

def omar(direction)
  if direction == 'R'
    [1, 0]
  elsif direction == 'U'
    [0, 1]
  elsif direction == 'L'
    [-1, 0]
  elsif direction == 'D'
    [0, -1]
  end
end

def add_to_set(set, direction, length, curr_pos)
  x, y = omar(direction)

  length.times do
    # new_pos = Tile.new(x: @wire_1_curr_position.x + (1 * x)), y: @wire_1_curr_position.y + (1 * y))
    new_pos = Tile.new
    new_pos.x = curr_pos.x + (1 * x)
    new_pos.y = curr_pos.y + (1 * y)
    curr_pos.x = new_pos.x
    curr_pos.y = new_pos.y
    p curr_pos
    set.add(new_pos)
  end
end

def iotti(wire, set, curr_pos)
  wire.split(',').each do |path_point|
    # p path_point
    direction = path_point[0]
    length = path_point[1..-1].to_i
    add_to_set(set, direction, length, curr_pos)
  end
end

iotti(WIRE_1, @wire_1_set, @wire_1_curr_position)
iotti(WIRE_2, @wire_2_set, @wire_2_curr_position)

closer = 9_999_999_999_999_999_999
(@wire_1_set & @wire_2_set).each do |x|
  distance = x.x + x.y
  closer = distance unless distance > closer
end

p closer
