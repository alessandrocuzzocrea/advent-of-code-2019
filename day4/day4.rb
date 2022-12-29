INPUT = 246515..739105

def two_adjacent_digits_are_the_same?(n)
  x = n.to_s
  x[0] == x[1] || x[1] == x[2] || x[2] == x[3] || x[3] == x[4] || x[4] == x[5]
end

def digits_never_decrease?(n)
  x = n.to_s
  x[0] <= x[1] && x[1] <= x[2] && x[2] <= x[3] && x[3] <= x[4] && x[4] <= x[5]
end

res = INPUT.select { |x| two_adjacent_digits_are_the_same?(x)  && digits_never_decrease?(x) }
p res.size
