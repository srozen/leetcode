defmodule PalindromeNumberTest do
  use ExUnit.Case

  test "case 1" do
    assert PalindromeNumber.is_palindrome(121) == true
  end

  test "case 2" do
    assert PalindromeNumber.is_palindrome(-121) == false
  end

  test "case 3" do
    assert PalindromeNumber.is_palindrome(10) == false
  end

  describe "Reverse number" do
    test "case 1" do
      assert PalindromeNumber.reverse_number(1234) == 4321
    end
  end
end
