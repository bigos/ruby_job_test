#! /usr/bin/env ruby

# started 12:54

# 1 ------------------------------------------------------------

def bubble_sort(list)
  return list if list.size <= 1 # already sorted
  loop do
    swapped = false
    0.upto(list.size - 2) do |i|
      if list[i] > list[i + 1]
        list[i], list[i + 1] = list[i + 1], list[i] # swap values
        swapped = true
      end
    end
    break unless swapped
  end
  list
end
puts 'Question 1'
p bubble_sort []
p bubble_sort [1]
p bubble_sort [3, 6, 7, 5, 4, 9, 8, 1, 2]
td1 = [5, 4, 3, 2, 1]
p td1.reverse == bubble_sort(td1)

# 2 ---------------------------------------------------------------

class Array
  def heapsort
    self.dup.heapsort!
  end

  def heapsort!
    # in pseudo-code, heapify only called once, so inline it here
    ((length - 2) / 2).downto(0) {|start| siftdown(start, length - 1)}

    # "end" is a ruby keyword
    (length - 1).downto(1) do |end_|
      self[end_], self[0] = self[0], self[end_]
      siftdown(0, end_ - 1)
    end
    self
  end

  def siftdown(start, end_)
    root = start
    loop do
      child = root * 2 + 1
      break if child > end_
      # puts "self === #{root.to_s} "
      # p self
      if child + 1 <= end_ and self[child].length < self[child + 1].length
        child += 1
      end
      if self[root].length < self[child].length
        self[root], self[child] = self[child], self[root]
        root = child
      else
        break
      end
    end
  end
end

arr2 = ['numbers-in-words', 'one', 'twoo', 'three']
p arr2.heapsort
