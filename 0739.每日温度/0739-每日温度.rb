# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
  n = temperatures.length
  ans = Array.new(n, 0)
  st = []
  (n - 1).downto(0) do |i|
    t = temperatures[i]
    while st.length > 0 && t >= temperatures[st[-1]]
      st.pop
    end
    if st.length > 0
      ans[i] = st[-1] - i
    end
    st.push(i)
  end
  ans
end
