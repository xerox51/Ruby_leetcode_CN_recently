# @param {String[]} time_points
# @return {Integer}

require "time"

def find_min_difference(time_points)
  time_points = time_points.map { |item| [Time.parse(["2024-01-01 ", item].join), Time.parse(["2024-01-02 ", item].join)] }.flatten.sort
  i = 0
  ans = ((time_points[1] - time_points[0]) / 60).to_i
  while i < time_points.length - 1
    ans = [ans, ((time_points[i + 1] - time_points[i]) / 60).to_i].min
    i += 1
  end
  ans
end
