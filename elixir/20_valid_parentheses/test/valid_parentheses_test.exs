defmodule ValidParenthesesTest do
  use ExUnit.Case

  test "case 1" do
    assert ValidParentheses.is_valid("()") == true
  end

  test "case 2" do
    assert ValidParentheses.is_valid("()[]{}") == true
  end

  test "case 3" do
    assert ValidParentheses.is_valid("(}") == false
  end
end
