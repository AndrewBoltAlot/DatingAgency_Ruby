class Aga < Single
  def initialize(gender, name,desirability, sought_desirability, hobbies, fussiness)
    super(gender, name,desirability, sought_desirability, hobbies, fussiness)
  end

  def match?(other, avg_desirability_other_singles)
    super
    (other.hobbies).intersection(@hobbies)
  end
end
