require_relative 'coin_changer.rb'
require 'minitest/autorun'

class Test_for_coin_changer < Minitest::Test
  def test_1for1
    assert_equal(1, 1)
  end
  def test_for_one_quarter
    assert_equal({:Quarter=>1}, coinify(25))
  end
  def test_for_two_quarters
    assert_equal({}, coinify(50))
  end
end
