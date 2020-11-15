require 'test/unit'
require_relative 'zin.rb'
require_relative 'single.rb'
class Test_Aga< Test::Unit::TestCase

  def setup
    @aga = Aga.new("John", 9, 9, "Sport")
    @zin2 = Zin.new("Bob", 8, 9, "Sport")
  end
  def test_shared_hobbies
    hobbies = [@aga.hobbies]
    hobbies2 = [@zin2.hobbies]
    expected = (hobbies & hobbies2).length == 20
    assert_equal( expected, (hobbies & hobbies2).length == 0)
    assert_equal(expected, (hobbies & hobbies2).length == 20)
  end

  def test_match?(other, avg_desirability_other_singles)
    if other == @aga
      expected = 9
      call = super(other, avg_desirability_other_singles)
      actual = (@zin2.desirability += ((@zin2.hobbies).intersection(@aga)).length)
      assert_equal(expected,actual )
      assert(call, "super class called")
    else
      false
    end
  end
end
