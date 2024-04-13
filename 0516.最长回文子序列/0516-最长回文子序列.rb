# @param {String} s
# @return {Integer}
def longest_palindrome_subseq(s)
  n = s.length
  f = Array.new(n, 0)
  (n - 1).downto(0) do |i|
    f[i] = 1
    pre = 0
    for j in i + 1...n
      tmp = f[j]
      if s[i] == s[j]
        f[j] = pre + 2
      else
        f[j] = [f[j], f[j - 1]].max
      end
      pre = tmp
    end
  end
  f[-1]
end
