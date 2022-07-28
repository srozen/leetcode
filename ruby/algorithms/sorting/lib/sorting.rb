class Sorting
  # Time complexity 0(n^2)
  # Space complexity 0(1)
  def self.selection_sort(arr)
    (0..arr.length-1).each { |i|
      candidate_index = i
      (i..arr.length-1).each {|j|
        candidate_index = j if arr[j] < arr[candidate_index]
      }
      saved_value = arr[i]
      arr[i] = arr[candidate_index]
      arr[candidate_index] = saved_value
    }
    arr
  end

  def self.bubble_sort(arr)
    swapped = true
    while swapped
      swapped = false
      (0..arr.length-2).each do |i|
        if arr[i+1] < arr[i]
          arr[i], arr[i+1] = arr[i+1], arr[i]
          swapped = true
        end
      end
    end
    arr
  end

  def self.insertion_sort(arr)
    (1..arr.length-1).each do |i|
      j = i-1
      while j >= 0 and arr[j] > arr[i]
        arr[i], arr[j] = arr[j], arr[i]
        i-=1
        j-=1
      end
    end
    arr
  end
end