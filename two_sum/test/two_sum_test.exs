defmodule TwoSumTest do
  use ExUnit.Case

  test "case 1" do
    assert TwoSum.two_sum([2,7,11,15], 9) == [0,1]
  end

  test "case 2" do
    assert TwoSum.two_sum([3,2,4], 6) == [1,2]
  end

  test "case 3" do
    assert TwoSum.two_sum([3, 3], 6) == [0,1]
  end
end
