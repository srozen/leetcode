defmodule RomanNumberTest do
  use ExUnit.Case

  test "case 1" do
    assert RomanNumber.roman_to_int("III") == 3
  end

  test "case 2" do
    assert RomanNumber.roman_to_int("LVIII") == 58
  end

  test "case 3" do
    assert RomanNumber.roman_to_int("MCMXCIV") == 1994
  end
end
