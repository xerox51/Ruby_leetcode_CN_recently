# @param {Integer[]} nums
# @return {Integer[]}
def nums_game(nums)
  n = nums.length
  res = Array.new(n, 0)
  lower, upper = PriorityQueue.new, PriorityQueue.new
  lowersum, uppersum = 0, 0
  mod = 10 ** 9 + 7
  for i in 0...n
    x = nums[i] - i
    if lower.size == 0 or -lower.v_of_i(0) >= x
      lowersum += x
      lower << -x
      if lower.size > upper.size + 1
        uppersum -= lower.v_of_i(0)
        upper << -lower.v_of_i(0)
        lowersum += lower.pop
      end
    else
      uppersum += x
      upper << x
      if lower.size < upper.size
        lowersum += upper.v_of_i(0)
        lower << -upper.v_of_i(0)
        uppersum -= upper.pop
      end
    end
    if (i + 1) % 2 == 0
      res[i] = (uppersum - lowersum) % mod
    else
      res[i] = (uppersum - lowersum - lower.v_of_i(0)) % mod
    end
  end
  res
end

class PriorityQueue
  attr_reader :elements, :size

  def initialize
    @elements = [nil]
    @size = nil
  end

  def size
    @size = (@elements.size - 1)
  end

  def isEmpty?
    return @size == 0
  end

  # compares <= 1 + logN
  def <<(element)
    @elements << element
    size
    swim(size)
  end

  def v_of_i(i)
    @elements[i + 1]
  end

  # compares <= 2LogN
  def pop
    max = @elements[1]
    exch(1, size)
    @elements.pop
    size
    sink(1)
    return max
  end

  private

  def sink(k)
    # j = child
    while 2 * k <= size
      j = 2 * k
      # get the largest child
      if j < size && less?(j, j + 1)
        j += 1
      end
      #if parent not < largest child
      if !less?(k, j)
        break
      end
      exch(k, j)
      k = j
    end
  end

  private

  def swim(k)
    # while not root and k's parent < k
    while k > 1 && less?(k / 2, k)
      exch(k, k / 2)
      k = k / 2
    end
  end

  private

  def less?(i, j)
    return (@elements[i] > @elements[j])
  end

  private

  def exch(i, j)
    @elements[i], @elements[j] = @elements[j], @elements[i]
  end
end
