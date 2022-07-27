defmodule MedianSortedArraysTest do
  use ExUnit.Case

  test "case 1" do
    assert MedianSortedArrays.find_median_sorted_arrays([1,3],[2]) == 2
  end

  test "case 2" do
    assert MedianSortedArrays.find_median_sorted_arrays([1,2],[3,4]) == 2.5
  end

  test "case 3" do
    assert MedianSortedArrays.find_median_sorted_arrays([],[1]) == 1
  end

  test "case 4" do
    assert MedianSortedArrays.find_median_sorted_arrays([1,3],[2,7]) == 2.5
  end
end
