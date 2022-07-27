defmodule PlusOneTest do
  use ExUnit.Case

  test "case 1" do
    assert PlusOne.plus_one([1,2,3]) == [1,2,4]
    assert PlusOne.plus_one([4,3,2,1]) == [4,3,2,2]
    assert PlusOne.plus_one([9]) == [1,0]
  end
end
