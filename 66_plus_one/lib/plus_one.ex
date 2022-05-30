defmodule PlusOne do
  @spec plus_one(digits :: [integer]) :: [integer]
  def plus_one(digits) do
    digits
    |> Enum.reverse()
    |> plus_one(1, [])
  end

  defp plus_one([], 0, acc), do: acc
  defp plus_one([], rem, acc), do: [rem | acc]
  defp plus_one([head|tail], rem, acc) do
    next = head + rem
    plus_one(tail, div(next, 10), [rem(next, 10) | acc])
  end
end
