# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  h = {}
  strs.each do |str|
    tmp = str.each_char.to_a.sort
    if h.has_key?(tmp)
      h[tmp].push(str)
    else
      h[tmp] = [str]
    end
  end
  h.values
end
