# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/two_sum'

class TwoSumTest < Minitest::Test
  def test_two_sum
    assert_equal TwoSum.new.two_sum([2,7,11,15], 9), [0,1]
  end
end