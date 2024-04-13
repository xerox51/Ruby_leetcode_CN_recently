# @param {String} s
# @return {Integer}
def maximum_length_substring(s)
  len = 0
  for i in 0...s.length
    (s.length - i).downto(1) do |j|
      it = s[i, j].each_char.to_a.uniq
      if it.length == s[i, j].length
        len = [len, it.length].max
        next
      end
      if it.all? { |m| s[i, j].count(m) <= 2 }
        len = [s[i, j].length, len].max
      end
    end
  end
  len
end
