class TwoSum
  # @param {Integer[]} nums
  # @param {Integer} target
  # @return {Integer[]}
  def two_sum(nums, target)
    hash = {}
    solution = []
    nums.each_with_index do |num, idx|
      needed = target - num
      if hash[needed]
        solution = [hash[needed], idx]
        break
      end
      hash[num] = idx
    end
    solution
  end
end