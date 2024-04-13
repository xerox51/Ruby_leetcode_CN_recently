# @param {String} s
# @return {Integer[]}
def partition_labels(s)
  last_n = Array.new(26, 0)
  for i in 0...s.length
    last_n[s[i].ord - "a".ord] = i
  end
  partition = []
  start = 0
  ending = 0
  for i in 0...s.length
    ending = [ending, last_n[s[i].ord - "a".ord]].max
    if i == ending
      partition.push(ending - start + 1)
      start = ending + 1
    end
  end
  partition
end
