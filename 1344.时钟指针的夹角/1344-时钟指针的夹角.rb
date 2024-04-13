# @param {Integer} hour
# @param {Integer} minutes
# @return {Float}
def angle_clock(hour, minutes)
  if hour >= 12
    hour -= 12
  end
  n = (360 / 12.0) * hour
  m = (minutes / 60.0) * (360 / 12.0)
  k = m + n
  f = (360 / 60.0) * minutes
  [(f - k).abs, 360.0 - (f - k).abs].min
end
