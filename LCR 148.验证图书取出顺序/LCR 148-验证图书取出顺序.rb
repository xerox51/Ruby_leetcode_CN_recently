# @param {Integer[]} put_in
# @param {Integer[]} take_out
# @return {Boolean}
def validate_book_sequences(put_in, take_out)
  stack = []
  j = 0
  n = put_in.length
  i = 0
  while i < n
    stack.push(put_in[i])
    while stack.length > 0 && stack[-1] == take_out[j]
      stack.pop
      j += 1
    end
    i += 1
  end
  stack.length == 0
end
