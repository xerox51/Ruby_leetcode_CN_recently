# @param {Integer} lo
# @param {Integer} hi
# @param {Integer} k
# @return {Integer}
def get_kth(lo, hi, k)
  (lo..hi).to_a.sort_by { |it| get_q(it) }[k - 1]
end

def get_q(num)
  if num == 1
    return 1
  end
  cnt = 0
  while num != 1
    if num % 2 == 0
      num /= 2
    else
      num = 3 * num + 1
    end
    cnt += 1
  end
  cnt
end
