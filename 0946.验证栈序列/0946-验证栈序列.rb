# @param {Integer[]} pushed
# @param {Integer[]} popped
# @return {Boolean}
def validate_stack_sequences(pushed, popped)
  st, j = [], 0
  for x in pushed
    st.push(x)
    while st.length > 0 && st[-1] == popped[j]
      st.pop
      j += 1
    end
  end
  st.length == 0
end
