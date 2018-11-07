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
    assert_equal({:Penny=>1}, coinify(1))
  end
  def test_for_2_quarters_a_dime_a_nickel_and_4_pennies
    assert_equal({:Quarter=>2, :Dime=>1, :Nickel=>1, :Penny=>4}, coinify(69))
  end
  def test_for_95
    assert_equal({:Quarter=>3, :Dime=>2}, coinify(95))
  end
  def test_for_632
    assert_equal({:Quarter=>25, :Nickel=>1, :Penny=>2}, coinify(632))
  end
  def test_for_3
    assert_equal({:Penny=>3}, coinify(3))
  end
  def test_for_99
    assert_equal({:Quarter=>3, :Dime=>2, :Penny=>4}, coinify(99))
  end
  def test_for_4969879533
    assert_equal({:Quarter=>198795181, :Nickel=>1, :Penny=>3}, coinify(4969879533))
  end
  def test_for_mapping_one_penny
    assert_equal({}, coinify_mapping(1))
  end
end
