# @param {String} num1
# @param {String} num2
# @return {String}
def complex_number_multiply(num1, num2)
  a1, a2 = num1.split("+")
  b1, b2 = num2.split("+")
  a = a1.to_i * b1.to_i
  b = a1.to_i * b2[0, b2.length - 1].to_i + b1.to_i * a2[0, a2.length - 1].to_i
  c = a2[0, a2.length - 1].to_i * b2[0, b2.length - 1].to_i
  if b == 0
    b = "0i"
  end
  if b == "0i"
    return (a - c).to_s + "+" + b
  else
    return (a - c).to_s + "+" + b.to_s + "i"
  end
end
