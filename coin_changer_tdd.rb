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
    assert_equal({:Quarter=>2}, coinify(50))
  end
  def test_for_a_dime
    assert_equal({:Dime=>1}, coinify(10))
  end
  def test_for_quarter_and_dime
    assert_equal({:Quarter=>1, :Dime=>1}, coinify(35))
  end
  def test_for_a_nickel
    assert_equal({:Nickel=>1}, coinify(5))
  end
  def test_for_a_quarter_dime_and_nickel
    assert_equal({:Quarter=>1, :Dime=>1, :Nickel=>1}, coinify(40))
  end
  def test_for_a_penny
    assert_equal({}, coinify(1))
  end
end
