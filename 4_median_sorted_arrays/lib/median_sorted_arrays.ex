defmodule MedianSortedArrays do
  @spec find_median_sorted_arrays(nums1 :: [integer], nums2 :: [integer]) :: float
  def find_median_sorted_arrays([], []), do: 0
  def find_median_sorted_arrays(nums1, nums2) do
    total_length = length(nums1) + length(nums2)
    is_odd = rem(total_length, 2) == 1
    target = case is_odd do
      true -> div(total_length, 2)
      false -> div(total_length, 2) - 1
    end

    find_median_sorted_arrays(nums1, nums2, 0, 0, target, is_odd)
  end

  defp find_median_sorted_arrays(nums1, nums2, ix, iy, target, is_odd) when ix + iy == target and is_odd do
    min(Enum.at(nums1, ix), Enum.at(nums2, iy))
  end

  defp find_median_sorted_arrays(nums1, nums2, ix, iy, target, _is_odd) when ix + iy == target do
    next_nums1 = Enum.at(nums1, ix)
    next_nums2 = Enum.at(nums2, iy)

    if next_nums1 < next_nums2 do
      (next_nums1 + min(Enum.at(nums1, ix+1), Enum.at(nums2, iy))) / 2
    else
      if next_nums1 > next_nums2 do
        (next_nums2 + min(Enum.at(nums1, ix), Enum.at(nums2, iy+1))) / 2
      else
        (next_nums1 + next_nums2) / 2
      end
    end
  end

  defp find_median_sorted_arrays(nums1, nums2, ix, iy, target, is_odd) do
    next_nums1 = Enum.at(nums1, ix)
    next_nums2 = Enum.at(nums2, iy)
    if next_nums1 < next_nums2 do
      find_median_sorted_arrays(nums1, nums2, ix+1, iy, target, is_odd)
    else
      if next_nums1 > next_nums2 do
        find_median_sorted_arrays(nums1, nums2, ix, iy+1, target, is_odd)
      else
        find_median_sorted_arrays(nums1, nums2, ix+1, iy, target, is_odd)
      end
    end
  end
end
