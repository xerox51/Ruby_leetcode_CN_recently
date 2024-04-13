# @param {String} s
# @return {String}
def maximum_odd_binary_number(s)
  if s.count("1") == 1
    m = "0" * (s.length - 1)
    m << "1"
    return m
  else
    n = s.count("1") - 1
    l = s.length
    m = "1" * n
    k = "0" * (l - n - 1)
    m << k
    m << "1"
    return m
  end
end
