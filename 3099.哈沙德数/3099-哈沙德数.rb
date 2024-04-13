# @param {Integer} x
# @return {Integer}
def sum_of_the_digits_of_harshad_number(x)
  y = x.to_s.each_char.to_a.map { |it| it.to_i }.sum
  if x % y == 0
    return y
  else
    return -1
  end
end
