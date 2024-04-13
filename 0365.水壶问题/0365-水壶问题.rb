# @param {Integer} jug1_capacity
# @param {Integer} jug2_capacity
# @param {Integer} target_capacity
# @return {Boolean}
def can_measure_water(jug1_capacity, jug2_capacity, target_capacity)
  if jug1_capacity + jug2_capacity < target_capacity
    return false
  end
  if jug1_capacity == 0 || jug2_capacity == 0
    return target_capacity == 0 || jug1_capacity + jug2_capacity == target_capacity
  end
  return (target_capacity % (jug1_capacity.gcd(jug2_capacity))) == 0
end
