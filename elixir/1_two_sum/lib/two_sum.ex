defmodule TwoSum do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target) do
    two_sum(nums, 0, target, Map.new())
  end

  def two_sum([head | tail], index, target, gathered) do
    desired = target - head
    case Map.fetch(gathered, desired) do
      {:ok, complementing_index} ->
        [complementing_index, index]
      :error ->
        two_sum(tail, index+1, target, Map.put(gathered, head, index))
    end
  end

  def two_sum([], _, _, _), do: :error
end
