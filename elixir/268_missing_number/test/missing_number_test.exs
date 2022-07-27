defmodule MissingNumberTest do
  use ExUnit.Case

  test "case 1" do
    assert MissingNumber.missing_number([3,0,1]) == 2
  end

  test "case 2" do
    assert MissingNumber.missing_number([0,1]) == 2
  end

  test "case 3" do
    assert MissingNumber.missing_number([9,6,4,2,3,5,7,0,1]) == 8
  end
end
