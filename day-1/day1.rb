class Day1
  def self.calc_fuel(mass)
    (mass / 3).floor - 2
  end
end

p File
  .read('input')
  .lines
  .map(&:to_i)
  .map {|mass| Day1.calc_fuel(mass)}
  .sum
