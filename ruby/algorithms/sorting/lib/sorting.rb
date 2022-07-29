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

  # Time complexity 0(n^2)
  # Space complexity 0(1)
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

  # Time complexity O(n^2)
  # Space complexity O(1)
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

  # Time complexity O(n log(n))
  # Space complexity 0(n)
  def self.merge_sort(arr)
    length = arr.length
    case length
    when 0
      arr
    when 1
      arr
    else
      merge_sorted_arrays(merge_sort(arr[0, length/2]), merge_sort(arr[length/2, length]))
    end
  end

  def self.merge_sorted_arrays(array_one, array_two)
    i = 0
    j = 0
    result = []
    while i < array_one.length || j < array_two.length
      if i >= array_one.length
        result.push(array_two[j])
        j += 1
      elsif j >= array_two.length
        result.push(array_one[i])
        i += 1
      elsif array_one[i] < array_two[j]
        result.push(array_one[i])
        i += 1
      else
        result.push(array_two[j])
        j += 1
      end
    end
    result
  end
end