
require 'test/unit'
require_relative 'single.rb'
class Test_Single < Test::Unit::TestCase
  def setup
    @single = Single.new("John", 9, 8, "Sport")
    @single2 = Single.new( "James", 10, 9, "Sport")
  end

  def test_match?
    assert_equal(@single2.desirability >= @single.desirability, @single2.desirability >= @single.desirability)
  end

  def test_fussiness
    expected = -1
    actual = @single2.sought_desirability - @single2.desirability
    assert_equal(expected, actual, "Fussy" )
  end
end
