   		    	
class Single
  attr_reader :name, :desirability, :fussiness

  def initialize(gender, name, desirability, sought_desirability, hobbies, fussiness)
    @gender, @name, @desirability, @sought_desirability, @fussiness = gender, name, desirability, sought_desirability, fussiness
    @hobbies =[hobbies]
  end

  def match?(other, avg_desirability_other_singles)
    other.desirability >= @sought_desirability || other.desirability > avg_desirability_other_singles
    end

  def to_s
    "#{@gender}, #{@name}, #{@desirability}, #{@sought_desirability}, #{@hobbies}"
  end

  def gender=(gender)
    @gender = gender
  end

  def aga

  end
  end

   		    	