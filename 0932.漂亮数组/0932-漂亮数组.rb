# @param {Integer} n
# @return {Integer[]}
def beautiful_array(n)
  @memo = { 1 => [1] }
  f(n)
end

def f(n)
  unless @memo.has_key?(n)
    odds = f((n + 1) / 2)
    evens = f(n / 2)
    ans1 = []
    if odds != nil
      odds.each do |x|
        ans1.push(2 * x - 1)
      end
    end
    ans2 = []
    if evens != nil
      evens.each do |x|
        ans2.push(2 * x)
      end
    end
    @memo[n] = ans1.concat(ans2)
  end
  @memo[n]
end
