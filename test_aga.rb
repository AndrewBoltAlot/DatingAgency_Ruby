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
    expected = (hobbies & hobbies2).length == 20
    assert_equal( expected, (hobbies & hobbies2).length == 0)
    assert_equal(expected, (hobbies & hobbies2).length == 20)
  end

  def test_match?(other, avg_desirability_other_singles)
    if test_shared_hobbies > 0
      expected = super(other, avg_desirability_other_singles)
      assert(expected, 'super class called')
    else
      false
     end
  end

end
