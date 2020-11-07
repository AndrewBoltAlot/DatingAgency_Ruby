   		    	
class Single
  attr_reader :name, :desirability, :fussiness, :hobbies

  def initialize(name, desirability, sought_desirability, hobbies)
    @gender, @name, @desirability, @sought_desirability, @hobbies = name, desirability, sought_desirability, hobbies
  end

  def match?(other, avg_desirability_other_singles)
    other.desirability >= @sought_desirability || other.desirability > avg_desirability_other_singles
    end

  def to_s
    "#{@gender}, #{@name}, #{@desirability}, #{@sought_desirability}, #{@hobbies}"
  end

  def fussiness
    @sought_desirability - @desirability
    end
  end

   		    	