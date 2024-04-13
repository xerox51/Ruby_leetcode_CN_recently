# @param {Integer} n
# @return {Integer}
def monotone_increasing_digits(n)
  if n.digits.sort == n.digits.reverse
    return n
  end
  m = n.digits.reverse
  len = m.length
  i = 0
  while true
    if m[i + 1] != nil && m[i] > m[i + 1]
      if i - 1 >= 0 && m[i - 1] == m[i]
        j = i
        while m[j - 1] == m[j]
          j -= 1
        end
        k = m[i - 1] - 1
        l = m[0, j]
        x = "9" * (len - j - 1)
        break
      elsif i - 1 >= 0 && m[i - 1] < m[i]
        k = m[i] - 1
        l = m[0, i]
        x = "9" * (len - i - 1)
        break
      else
        k = m[i] - 1
        l = m[0, i]
        x = "9" * (len - i - 1)
        break
      end
    end
    i += 1
  end
  if l != nil
    l = l.map { |it| it.to_s }.join
  else
    l = ""
  end
  (l + k.to_s + x).to_i
end
