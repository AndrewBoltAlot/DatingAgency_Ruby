
require 'test/unit'
require_relative 'single.rb'
class Test_Single < Test::Unit::TestCase
  def setup
    @single = Single.new("a", "John", 9, 8, "Sport", 5)
    @single2 = Single.new( "a", "James", 10, 9, "Sport", 5)
  end

  def test_initialize
    assert_equal(@single.gender=("a"), "a", "Assertion true")
  end

  def test_match?
    assert_equal(@single2.desirability >= @single.desirability, @single2.desirability >= @single.desirability)

  end
end
