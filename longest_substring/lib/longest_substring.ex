defmodule LongestSubstring do
  @spec length_of_longest_substring(s :: String.t) :: integer
  def length_of_longest_substring(""), do: 0
  def length_of_longest_substring(s) do
    graphemes = s |> String.graphemes()
    length_of_longest_substring(graphemes, 0, Map.new, 0, graphemes)
  end

  defp length_of_longest_substring([head|tail], iterator, traversed, current_max, saved_tail) do
    case Map.fetch(traversed, head) do
      {:ok, _} ->
        resumed_string = skip_past_duplicated(saved_tail, head)
        length_of_longest_substring(resumed_string, 0, Map.new, max(iterator, current_max), resumed_string)
      :error ->
        length_of_longest_substring(tail, iterator+1, Map.put(traversed, head, head), current_max, saved_tail)
    end
  end

  defp length_of_longest_substring([], iterator, _, current_max, _) do
    max(iterator, current_max)
  end

  defp skip_past_duplicated([head|tail], duplicated) do
    case duplicated == head do
      true -> tail
      false -> skip_past_duplicated(tail, duplicated)
    end
  end

  defp skip_past_duplicated([], _duplicated), do: []
end
