# @param {String[]} bank
# @return {Integer}
def number_of_beams(bank)
  bank = bank.select { |item| item.each_char.to_a.any? { |it| it != "0" } }
  if bank.length == 0
    return 0
  end
  ans = 0
  len1 = bank[0].count("1")
  for i in 0...bank.length - 1
    len2 = bank[i + 1].count("1")
    ans += len2 * len1
    len1 = len2
  end
  ans
end
