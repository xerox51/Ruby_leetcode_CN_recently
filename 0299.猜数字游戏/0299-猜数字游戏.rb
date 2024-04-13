# @param {String} secret
# @param {String} guess
# @return {String}
def get_hint(secret, guess)
  bulls = 0
  cnts, cntg = Array.new(10, 0), Array.new(10, 0)
  for s, g in secret.each_char.to_a.zip(guess.each_char.to_a)
    if s == g
      bulls += 1
    else
      cnts[s.to_i] += 1
      cntg[g.to_i] += 1
    end
  end
  cows = 0
  for s, g in cnts.zip(cntg)
    cows += [s.to_i, g.to_i].min
  end
  bulls.to_s + "A" + cows.to_s + "B"
end
