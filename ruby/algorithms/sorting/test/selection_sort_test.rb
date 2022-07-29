# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/sorting'

class SortingTest < Minitest::Test
  def test_selection_sort
    assert_equal Sorting.selection_sort([3,1,2,4]), [1,2,3,4]
    assert_equal Sorting.selection_sort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  end

  def test_bubble_sort
    assert_equal Sorting.bubble_sort([3,1,2,4]), [1,2,3,4]
    assert_equal Sorting.bubble_sort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  end

  def test_insertion_sort
    assert_equal Sorting.insertion_sort([3,1,2,4]), [1,2,3,4]
    assert_equal Sorting.insertion_sort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  end

  def test_merge_sort
    assert_equal Sorting.merge_sort([3,1,2,4]), [1,2,3,4]
    assert_equal Sorting.merge_sort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  end

  def test_merge_sorted_arrays
    assert_equal Sorting.merge_sorted_arrays([1,2,3], [4,5,6]), [1,2,3,4,5,6]
    assert_equal Sorting.merge_sorted_arrays([2,4,6,8], [1,3,5,7]), [1, 2, 3, 4, 5, 6, 7, 8]
    assert_equal Sorting.merge_sorted_arrays([4,6], [1,3,5,7]), [1, 3, 4, 5, 6, 7]
  end
end