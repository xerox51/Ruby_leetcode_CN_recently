# @param {Integer[]} alice_values
# @param {Integer[]} bob_values
# @return {Integer}
def stone_game_vi(alice_values, bob_values)
  n = alice_values.length
  values = Array.new(n) { Array.new(3) }
  for i in 0...n
    values[i][0] = alice_values[i] + bob_values[i]
    values[i][1] = alice_values[i]
    values[i][2] = bob_values[i]
  end
  values.sort_by! { |item| -item[0] }
  alicesum, bobsum = 0, 0
  for i in 0...n
    if i % 2 == 0
      alicesum += values[i][1]
    else
      bobsum += values[i][2]
    end
  end
  if alicesum > bobsum
    return 1
  elsif alicesum == bobsum
    return 0
  else
    return -1
  end
end
