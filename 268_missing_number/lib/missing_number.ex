defmodule MissingNumber do
  @spec missing_number(nums :: [integer]) :: integer
  def missing_number(nums) do
    Enum.sum(1..length(nums)) - Enum.sum(nums)
  end
end
