# @param {Integer[]} processor_time
# @param {Integer[]} tasks
# @return {Integer}
def min_processing_time(processor_time, tasks)
  processor_time.sort!
  tasks.sort_by! { |item| -item }
  ans = 0
  for i in 0...processor_time.length
    ans = [ans, processor_time[i] + tasks[i * 4]].max
  end
  ans
end
