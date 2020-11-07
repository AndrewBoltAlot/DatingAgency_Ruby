require_relative 'single.rb'
class Zin < Single
  def initialize(name,desirability, sought_desirability, hobbies)
    super(name,desirability, sought_desirability, hobbies)
  end

  def match?(other, avg_desirability_other_singles)
=begin
    f1 = super(other, avg_desirability_other_singles)
    f2 = false
=end
    if other.class == "Aga"
      other.desirability += shared_hobbies.to_i
      super(other,avg_desirability_other_singles)
    else
      false
    end

=begin
    if f1 && f2
      true
    else
      false
    end
=end
  end

  def shared_hobbies(other)
    (other.hobbies & @hobbies).length
  end

end
