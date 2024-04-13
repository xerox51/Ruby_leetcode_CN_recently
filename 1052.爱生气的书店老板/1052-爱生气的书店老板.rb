# @param {Integer[]} customers
# @param {Integer[]} grumpy
# @param {Integer} minutes
# @return {Integer}
def max_satisfied(customers, grumpy, minutes)
  n = customers.length
  total = 0
  for c, g in customers.zip(grumpy)
    if g == 0
      total += c
    end
  end
  maxincrease = 0
  increase = 0
  for c, g in customers[0, minutes].zip(grumpy[0, minutes])
    maxincrease += c * g
    increase += c * g
  end
  for i in minutes...n
    increase += customers[i] * grumpy[i] - customers[i - minutes] * grumpy[i - minutes]
    maxincrease = [maxincrease, increase].max
  end
  total + maxincrease
end
