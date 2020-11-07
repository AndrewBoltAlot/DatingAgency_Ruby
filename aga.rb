require_relative 'single.rb'
class Aga < Single
  def initialize(name,desirability, sought_desirability, hobbies)
    super(name,desirability, sought_desirability, hobbies)
  end

  def match?(other, avg_desirability_other_singles)
      if shared_hobbies(other)
        other.desirability += ((other.hobbies).intersection(@hobbies)).length
      else
          false
      end
  end

  def shared_hobbies(other)
    ((other.hobbies).intersection(@hobbies)).length.positive?
  end
end

