# @param {String} s
# @param {Integer[]} spaces
# @return {String}
def add_spaces(s, spaces)
  s1 = ""
  l = spaces.length
  m = s.length
  if m == 1
    return " " + s
  end
  spaces.each_with_index do |space, index|
    if index == 0 && space != 0
      s1 << s[0, space]
      s1 << " "
      if spaces[index + 1] != nil
        s1 << s[space, spaces[index + 1] - space]
        s1 << " "
      else
        s1 << s[space, m - space]
      end
    elsif index == 0 && space == 0
      s1 << " "
      if spaces[index + 1] != nil
        s1 << s[0, spaces[index + 1] - space]
        s1 << " "
      else
        s1 << s
      end
    elsif index < l - 1
      s1 << s[space, spaces[index + 1] - space]
      s1 << " "
    else
      s1 << s[space, m - space]
    end
  end
  s1
end
