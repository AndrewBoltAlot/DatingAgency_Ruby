require_relative 'single.rb'
class Aga < Single
  def initialize(name,desirability, sought_desirability, hobbies)
    super(name,desirability, sought_desirability, hobbies)
  end

  def match?(other, avg_desirability_other_singles)
      if shared_hobbies(other) > 0
        other.desirability += shared_hobbies(other).to_i
      else
          false
      end
  end

  def increased_desirability(other)
    other.desirability += shared_hobbies(other).to_i
  end

  def shared_hobbies(other)
      ((other.hobbies).intersection(@hobbies)).length
  end
end

