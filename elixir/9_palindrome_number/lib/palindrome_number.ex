defmodule PalindromeNumber do
  @spec is_palindrome(x :: integer) :: boolean
  def is_palindrome(x) when x < 0, do: false
  def is_palindrome(x) do
    x == reverse_number(x)
  end

  def reverse_number(number \\ 0, result \\ 0)
  def reverse_number(0, result), do: result
  def reverse_number(number, result) do
    reverse_number(div(number, 10), result * 10 + rem(number, 10))
  end
end
