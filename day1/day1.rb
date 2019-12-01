class Day1
  def self.calc_fuel(mass)
    (mass / 3).floor - 2
  end

  def self.calc_fuel_part2(mass)
    return 0 unless self.calc_fuel(mass).positive?
    self.calc_fuel(mass) + self.calc_fuel_part2(self.calc_fuel(mass))
  end
end

p File
  .read('input')
  .lines
  .map(&:to_i)
  .map {|mass| Day1.calc_fuel(mass)}
  .sum

p File
  .read('input')
  .lines
  .map(&:to_i)
  .map {|mass| Day1.calc_fuel_part2(mass)}
  .sum
