# @param {Integer} num
# @return {Integer}
def maximum_swap(num)
  ans = num.to_s.each_char.to_a
  temp = ans.sort.reverse
  if ans == temp
    return num
  else
    num1 = []
    temp1 = []
    for i in 0...ans.length
      num1.push(ans[i].to_i)
    end
    for i in 0...temp.length
      temp1.push(temp[i].to_i)
    end
    for i in 0...num1.length
      num_temp = num1[i]
      num_tempo = num1[i, num1.length].max
      num_index = num1.rindex(num_tempo)
      if num1[i] != temp1[i]
        num1[i] = num_tempo
        num1[num_index] = num_temp
        break
      end
    end
    num1.join.to_i
  end
end
