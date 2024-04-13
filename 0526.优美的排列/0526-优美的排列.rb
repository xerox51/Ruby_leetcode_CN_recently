# @param {Integer} n
# @return {Integer}
def count_arrangement(n)
  mask = 1 << n
  f = Array.new(mask, 0)
  f[0] = 1
  for state in 1...mask
    cnt = getcnt(state)
    for i in 0...n
      if ((state >> i) & 1) == 0
        next
      end
      if (i + 1) % cnt != 0 && cnt % (i + 1) != 0
        next
      end
      f[state] += f[state & (~(1 << i))]
    end
  end
  f[mask - 1]
end

def getcnt(x)
  ans = 0
  while x != 0
    x -= (x & -x)
    ans += 1
  end
  ans
end
