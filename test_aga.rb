require 'test/unit'
require_relative 'aga.rb'
class Test_Aga< Test::Unit::TestCase
  def setup
    @aga = Aga.new("John", 9, 9, "Sport")
    @aga2 = Aga.new("Bob", 8, 9, "Sport")
  end

  def test_shared_hobbies
    hobbies = [@aga.hobbies]
    hobbies2 = [@aga2.hobbies]
    expected = (hobbies & hobbies2).length.positive? == true
    assert_equal( expected, (hobbies & hobbies2).length.positive? == false)
    assert_equal(expected, (hobbies & hobbies2).length.positive? == true)
  end

  def test_match?
    if test_shared_hobbies == true
      expected = (@aga2.desirability += ((@aga2.hobbies).intersection(@aga)).length)
      assert_equal(expected,(@aga2.desirability += ((@aga2.hobbies).intersection(@aga)).length) )
     end
  end

end
