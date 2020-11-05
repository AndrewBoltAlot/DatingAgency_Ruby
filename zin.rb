class Zin < Single
  def initialize(name,desirability, sought_desirability, hobbies)
    super(name,desirability, sought_desirability, hobbies)
  end

  def match?(other, avg_desirability_other_singles)
    f1 = super(other, avg_desirability_other_singles)
    f2 = false
    if other.class == "Aga"
      other.desirability += sharedHobbies.to_i
      f2 = super(other,avg_desirability_other_singles)
    else
      f2
    end

  end

  def sharedHobbies(other)
  ((other.hobbies).intersection(@hobbies)).length
  end

end
