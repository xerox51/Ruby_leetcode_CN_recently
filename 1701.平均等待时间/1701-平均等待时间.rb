# @param {Integer[][]} customers
# @return {Float}
def average_waiting_time(customers)
  t = 0
  tmp = []
  customers.each_with_index do |c, i|
    if i == 0
      t = c[0] + c[1]
      tmp.push(c[1])
    else
      if t < c[0]
        t = c[0] + c[1]
      else
        t += c[1]
      end
      tmp.push(t - c[0])
    end
  end
  tmp.sum / tmp.length.to_f
end
