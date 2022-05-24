defmodule AddTwoNumbersTest do
  use ExUnit.Case

  test "case 1" do
    l1 = [2,4,3] |> Enum.reverse() |> AddTwoNumbers.list_to_list_node()
    l2 = [5,6,4] |> Enum.reverse() |> AddTwoNumbers.list_to_list_node()
    l3 = [7,0,8] |> Enum.reverse() |> AddTwoNumbers.list_to_list_node()
    assert AddTwoNumbers.add_two_numbers(l1, l2) == l3
  end

  test "case 2" do
    l1 = %ListNode{val: 0, next: nil}
    l2 = %ListNode{val: 0, next: nil}
    l3 = %ListNode{val: 0, next: nil}
    assert AddTwoNumbers.add_two_numbers(l1, l2) == l3
  end

  test "case 3" do
    l1 = [9,9,9,9,9,9,9] |> Enum.reverse() |> AddTwoNumbers.list_to_list_node()
    l2 = [9,9,9,9] |> Enum.reverse() |> AddTwoNumbers.list_to_list_node()
    l3 = [8,9,9,9,0,0,0,1] |> Enum.reverse() |> AddTwoNumbers.list_to_list_node()
    assert AddTwoNumbers.add_two_numbers(l1, l2) == l3
  end
end
