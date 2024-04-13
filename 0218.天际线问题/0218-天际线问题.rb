# @param {Integer[][]} buildings
# @return {Integer[][]}
def get_skyline(buildings)
  ans = []
  ps = []
  buildings.each do |b|
    l = b[0]
    r = b[1]
    h = b[2]
    ps.push([l, h, -1])
    ps.push([r, h, 1])
  end
  ps.sort! do |a, b|
    if a[0] != b[0]
      a[0] - b[0]
    elsif a[2] != b[2]
      a[2] - b[2]
    elsif a[2] == -1
      b[1] - a[1]
    else
      a[1] - b[1]
    end
  end
  q = PriorityQueue.new
  map = {}
  prev = 0
  q.add(prev)
  ps.each do |p|
    point = p[0]
    height = p[1]
    flag = p[2]
    if flag == -1
      q.add(height)
    else
      if map.has_key?(height)
        map[height] = map[height] + 1
      else
        map[height] = 1
      end
    end
    while q.length > 0
      peek = q.peek
      if map.has_key?(peek)
        if map[peek] == 1
          map.delete(peek)
        else
          map[peek] -= 1
        end
        q.poll
      else
        break
      end
    end
    cur = q.peek
    if cur != prev
      list = []
      list.push(point)
      list.push(cur)
      ans.push(list)
      prev = cur
    end
  end
  ans
end

class PriorityQueue
  def initialize
    @heap = []
  end

  def add(element)
    @heap << element
    heapify_up(@heap.length - 1)
  end

  def length
    @heap.length
  end

  def peek
    @heap[0]
  end

  def poll
    return nil if @heap.empty?

    if @heap.length == 1
      return @heap.pop
    end

    root = @heap[0]
    @heap[0] = @heap.pop
    heapify_down(0)
    root
  end

  private

  def heapify_up(index)
    parent_index = (index - 1) / 2

    while index > 0 && @heap[index] > @heap[parent_index]
      @heap[index], @heap[parent_index] = @heap[parent_index], @heap[index]
      index = parent_index
      parent_index = (index - 1) / 2
    end
  end

  def heapify_down(index)
    left_child_index = 2 * index + 1
    right_child_index = 2 * index + 2
    smallest = index

    if left_child_index < @heap.length && @heap[left_child_index] > @heap[smallest]
      smallest = left_child_index
    end

    if right_child_index < @heap.length && @heap[right_child_index] > @heap[smallest]
      smallest = right_child_index
    end

    if smallest != index
      @heap[index], @heap[smallest] = @heap[smallest], @heap[index]
      heapify_down(smallest)
    end
  end
end
