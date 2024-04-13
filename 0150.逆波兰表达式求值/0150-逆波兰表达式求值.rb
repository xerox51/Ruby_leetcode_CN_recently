# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  stack = []
  n = tokens.length
  for i in 0...n
    token = tokens[i]
    if isNumber(token)
      stack.push(token.to_i)
    else
      num2 = stack.pop
      num1 = stack.pop
      case token
      when "+"
        stack.push(num1 + num2)
      when "-"
        stack.push(num1 - num2)
      when "*"
        stack.push(num1 * num2)
      when "/"
        stack.push((num1 / num2.to_f).to_i)
      end
    end
  end
  stack.pop
end

def isNumber(token)
  return token != "+" && token != "-" && token != "*" && token != "/"
end
