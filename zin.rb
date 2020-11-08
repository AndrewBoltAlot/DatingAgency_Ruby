require_relative 'single.rb'
require_relative 'aga.rb'
class Zin < Single
  def initialize(name,desirability, sought_desirability, hobbies)
    super(name,desirability, sought_desirability, hobbies)
  end

  def match?(other, avg_desirability_other_singles)
    if other.is_a?(Aga)
      other.desirability += shared_hobbies(other).to_i
      super(other,avg_desirability_other_singles)
    else
      false
    end
  end

  def shared_hobbies(other)
    (other.hobbies & @hobbies).length
  end



end
