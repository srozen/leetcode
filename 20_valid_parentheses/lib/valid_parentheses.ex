defmodule ValidParentheses do
  @spec is_valid(s :: String.t) :: boolean
  def is_valid(s) do
    s
    |> String.graphemes()
    |> validate([])
  end

  defp validate([], []), do: true
  defp validate([], _stack), do: false


  defp validate([parenthese|remaining], stack) when parenthese in ["(", "{", "["] do
    validate(remaining, [parenthese|stack])
  end


  defp validate([parenthese|remaining], stack) when parenthese in [")", "}", "]"] do
    case stack do
      [] -> false
      [head|tail] ->
        if head == opening_match(parenthese) do
          validate(remaining, tail)
        else
          false
        end
    end
  end

  defp opening_match(closing) do
    case closing do
      ")" -> "("
      "}" -> "{"
      "]" -> "["
      _ -> raise ArgumentError
    end
  end
end
