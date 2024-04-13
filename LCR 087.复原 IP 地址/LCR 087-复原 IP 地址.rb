def restore_ip_addresses(s)
  ans = []
  segements = Array.new(4, 0)
  dfs(0, 0, s, ans, segements)
  ans
end

def dfs(segid, segstart, s, ans, segements)
  if segid == 4
    if segstart == s.length
      ipaddr = segements.map { |seg| seg.to_s }
      ipaddr = ipaddr.join(".")
      ans.push(ipaddr)
    end
    return
  end
  if segstart == s.length
    return
  end
  if s[segstart] == "0"
    segements[segid] = 0
    dfs(segid + 1, segstart + 1, s, ans, segements)
    return
  end
  addr = 0
  for segend in segstart...s.length
    addr = addr * 10 + s[segend].ord - "0".ord
    if 0 < addr and addr <= 15 * 16 + 15
      segements[segid] = addr
      dfs(segid + 1, segend + 1, s, ans, segements)
    else
      break
    end
  end
end
