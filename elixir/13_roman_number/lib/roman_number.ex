defmodule RomanNumber do
  def roman_to_int(s) do
    s
    |> String.graphemes()
    |> roman_to_int(0)
  end

  defp roman_to_int([], acc), do: acc
  defp roman_to_int(["C", "D" | tail], acc), do: roman_to_int(tail, acc+400)
  defp roman_to_int(["C", "M" | tail], acc), do: roman_to_int(tail, acc+900)
  defp roman_to_int(["X", "L" | tail], acc), do: roman_to_int(tail, acc+40)
  defp roman_to_int(["X", "C" | tail], acc), do: roman_to_int(tail, acc+90)
  defp roman_to_int(["I", "V" | tail], acc), do: roman_to_int(tail, acc+4)
  defp roman_to_int(["I", "X" | tail], acc), do: roman_to_int(tail, acc+9)

  defp roman_to_int(["I" | tail], acc), do: roman_to_int(tail, acc+1)
  defp roman_to_int(["V" | tail], acc), do: roman_to_int(tail, acc+5)
  defp roman_to_int(["X" | tail], acc), do: roman_to_int(tail, acc+10)
  defp roman_to_int(["L" | tail], acc), do: roman_to_int(tail, acc+50)
  defp roman_to_int(["C" | tail], acc), do: roman_to_int(tail, acc+100)
  defp roman_to_int(["D" | tail], acc), do: roman_to_int(tail, acc+500)
  defp roman_to_int(["M" | tail], acc), do: roman_to_int(tail, acc+1000)
end
