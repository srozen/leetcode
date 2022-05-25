defmodule LongestSubstringTest do
  use ExUnit.Case

  test "case 1" do
    assert LongestSubstring.length_of_longest_substring("abcabcbb") == 3
  end

  test "case 2" do
    assert LongestSubstring.length_of_longest_substring("bbbbb") == 1
  end

  test "case 3" do
    assert LongestSubstring.length_of_longest_substring("pwwkew") == 3
  end

  test "case 4" do
    assert LongestSubstring.length_of_longest_substring(" ") == 1
  end

  test "case 5" do
    assert LongestSubstring.length_of_longest_substring("aab") == 2
  end
end
