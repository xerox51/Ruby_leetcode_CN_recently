def count_paths(n, edges)
  def mul(x, y)
    return x * y
  end

  def dfs(x, f, con, prime, r)
    if prime[x]
      x1 = 1
    else
      x1 = 0
    end
    v = [1 - x1, x1]
    con[x].each do |y|
      if y == f
        next
      end
      p = dfs(y, x, con, prime, r)
      r[0] += mul(p[0], v[1]) + mul(p[1], v[0])
      if prime[x]
        v[1] += p[0]
      else
        v[0] += p[0]
        v[1] += p[1]
      end
    end
    return v
  end

  prime = [true] * (n + 1)
  prime[1] = false

  all_primes = []
  (2..n).each do |i|
    if prime[i]
      all_primes.append(i)
    end
    all_primes.each do |x|
      temp = i * x
      if temp > n
        break
      end
      prime[temp] = false
      if i % x == 0
        break
      end
    end
  end

  con = Array.new(n + 1) { [] }
  edges.each do |e|
    con[e[0]].append(e[1])
    con[e[1]].append(e[0])
  end

  r = [0]
  dfs(1, 0, con, prime, r)
  return r[0]
end
