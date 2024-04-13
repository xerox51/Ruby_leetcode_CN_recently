# @param {String} s
# @return {Integer}
def min_flips_mono_incr(s)
  dp0, dp1 = 0, 0
  for i in 0...s.length
    dp0new, dp1new = dp0, [dp0, dp1].min
    if s[i] == "1"
      dp0new += 1
    else
      dp1new += 1
    end
    dp0, dp1 = dp0new, dp1new
  end
  [dp0, dp1].min
end
