defmodule LongestSubstring do
  @spec length_of_longest_substring(s :: String.t) :: integer
  def length_of_longest_substring(""), do: 0
  def length_of_longest_substring(s) do
    graphemes = s |> String.graphemes()
    length_of_longest_substring(graphemes, 0, Map.new, 0, tl(graphemes))
  end

  defp length_of_longest_substring([head|tail], iterator, traversed, current_max, saved_tail) do
    case Map.fetch(traversed, head) do
      {:ok, _} ->
        length_of_longest_substring(saved_tail, 0, Map.new, max(iterator, current_max), tl(saved_tail))
      :error ->
        length_of_longest_substring(tail, iterator+1, Map.put(traversed, head, head), current_max, saved_tail)
    end
  end

  defp length_of_longest_substring([], iterator, _, current_max, _) do
    max(iterator, current_max)
  end
end
