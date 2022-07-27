defmodule AddTwoNumbers do
  @spec add_two_numbers(l1 :: ListNode.t | nil, l2 :: ListNode.t | nil) :: ListNode.t | nil
  def add_two_numbers(l1, l2) do
    add_two_numbers(l1, l2, 0, [])
  end

  defp add_two_numbers(nil, %ListNode{val: value, next: next}, remainder, list) do
    result = value + remainder
    next_remainder = div(result, 10)
    node_value = rem(result, 10)
    add_two_numbers(nil, next, next_remainder, [node_value | list])
  end

  defp add_two_numbers(%ListNode{val: value, next: next}, nil, remainder, list) do
    result = value + remainder
    next_remainder = div(result, 10)
    node_value = rem(result, 10)
    add_two_numbers(nil, next, next_remainder, [node_value | list])
  end

  defp add_two_numbers(%ListNode{val: value1, next: next1}, %ListNode{val: value2, next: next2}, remainder, list) do
    result = value1 + value2 + remainder
    next_remainder = div(result, 10)
    node_value = rem(result, 10)
    add_two_numbers(next1, next2, next_remainder, [node_value | list])
  end

  defp add_two_numbers(nil, nil, remainder, list) do
    case remainder do
      0 -> list
      _ -> [remainder | list]
    end
    |> list_to_list_node()
  end

  def list_to_list_node(list, acc \\ nil)
  def list_to_list_node([head | tail], acc), do: list_to_list_node(tail, %ListNode{val: head, next: acc})
  def list_to_list_node([], acc), do: acc
end
