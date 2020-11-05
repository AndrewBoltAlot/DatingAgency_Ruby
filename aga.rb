class Aga < Single
  def initialize(name,desirability, sought_desirability, hobbies)
    super(name,desirability, sought_desirability, hobbies)
  end

  def match?(other, avg_desirability_other_singles)
    f1 = sharedHobbies(other)
    if sharedHobbies(other)
      f1 = true
    else
      f1
    end

  end

  def sharedHobbies(other)
    ((other.hobbies).intersection(@hobbies)).length.positive?
  end

  end

