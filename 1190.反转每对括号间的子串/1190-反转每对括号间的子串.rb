# @param {String} s
# @return {String}
def reverse_parentheses(s)
  stack = []
  s1 = s.each_char.to_a
  for i in 0...s.length
    if s[i] == "("
      stack.push(["(", i])
    elsif s[i] == ")" && stack[-1][0] == "("
      s1[stack[-1][1] + 1, i - stack[-1][1] - 1] = s1[stack[-1][1] + 1, i - stack[-1][1] - 1].reverse
      stack.pop
    end
  end
  s1.select { |it| it != ")" && it != "(" }.join
end
