def min_number_of_semesters(n, relations, k)
  course_mask = (1 << n) - 1
  @dp = Array.new(course_mask + 1, nil)
  helper(n, relations, course_mask, k)
end

def helper(n, relations, course_mask, k)
  if course_mask == 0
    return 0
  end
  if @dp[course_mask] != nil
    return @dp[course_mask]
  end
  indeg = Array.new(n, 0)
  relations.each do |rel|
    u = rel[0] - 1
    v = rel[1] - 1
    if isbiton(course_mask, u)
      indeg[v] += 1
    end
  end
  avail_course_mask = 0
  for i in 0...indeg.length
    if indeg[i] == 0 && isbiton(course_mask, i)
      avail_course_mask = setkthbit(avail_course_mask, i)
    end
  end
  total_available_course_this_sem = countsetbits(avail_course_mask)
  if total_available_course_this_sem <= k
    newmask = (course_mask ^ avail_course_mask)
    return @dp[course_mask] = 1 + helper(n, relations, newmask, k)
  end
  min_n = n
  subs = avail_course_mask
  while subs > 0
    if countsetbits(subs) == k
      newmask = (course_mask ^ subs)
      temp = 1 + helper(n, relations, newmask, k)
      min_n = [min_n, temp].min
    end
    subs = (subs - 1) & avail_course_mask
  end
  return @dp[course_mask] = min_n
end

def isbiton(num, k)
  (num & (1 << k)) > 0
end

def setkthbit(num, k)
  (num ^ (1 << k))
end

def countsetbits(num)
  count = 0
  while num != 0
    num &= (num - 1)
    count += 1
  end
  count
end
