# @param {Integer[][]} costs
# @return {Integer}
def two_city_sched_cost(costs)
  costs.sort_by! { |item| item[0] - item[1] }
  total = 0
  n = costs.length / 2
  for i in 0...n
    total += costs[i][0] + costs[i + n][1]
  end
  total
end
