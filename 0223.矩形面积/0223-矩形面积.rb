# @param {Integer} ax1
# @param {Integer} ay1
# @param {Integer} ax2
# @param {Integer} ay2
# @param {Integer} bx1
# @param {Integer} by1
# @param {Integer} bx2
# @param {Integer} by2
# @return {Integer}
def compute_area(ax1, ay1, ax2, ay2, bx1, by1, bx2, by2)
  area1 = (ax2 - ax1) * (ay2 - ay1)
  area2 = (bx2 - bx1) * (by2 - by1)
  overlapWidth = [ax2, bx2].min - [ax1, bx1].max
  overlapHeight = [ay2, by2].min - [ay1, by1].max
  overlapArea = [overlapWidth, 0].max * [overlapHeight, 0].max
  area1 + area2 - overlapArea
end
