# @param {String} begin_word
# @param {String} end_word
# @param {String[]} word_list
# @return {String[][]}
def find_ladders(begin_word, end_word, word_list)
  res = []
  dict = Set.new(word_list)
  return res unless dict.include?(end_word)

  dict.delete(begin_word)

  steps = { begin_word => 0 }
  from = Hash.new { |h, k| h[k] = [] }
  step = 1
  found = false
  word_len = begin_word.length
  queue = Queue.new
  queue << begin_word

  while !queue.empty?
    size = queue.size
    size.times do
      curr_word = queue.pop
      char_array = curr_word.chars
      (0...word_len).each do |j|
        origin = char_array[j]
        ("a".."z").each do |c|
          char_array[j] = c
          next_word = char_array.join
          if steps.key?(next_word) && step == steps[next_word]
            from[next_word] << curr_word
          end
          next unless dict.include?(next_word)

          dict.delete(next_word)
          queue << next_word
          from[next_word] ||= []
          from[next_word] << curr_word
          steps[next_word] = step
          found = true if next_word == end_word
        end
        char_array[j] = origin
      end
    end
    step += 1
    break if found
  end

  backtrack(from, [end_word], begin_word, end_word, res) if found
  res
end

def backtrack(from, path, begin_word, cur, res)
  if cur == begin_word
    res << path.dup
    return
  end

  from[cur].each do |precursor|
    path.unshift(precursor)
    backtrack(from, path, begin_word, precursor, res)
    path.shift
  end
end
