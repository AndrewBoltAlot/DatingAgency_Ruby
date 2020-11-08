   		    	
class Single
  attr_reader :name, :hobbies, :fussiness
  attr_accessor :desirability

  def initialize(name, desirability, sought_desirability, hobbies)
    @name, @desirability, @sought_desirability, @hobbies = name, desirability, sought_desirability, hobbies
    @fussiness = fussiness
  end

  def match?(other, avg_desirability_other_singles)
    other.desirability >= @sought_desirability || other.desirability > avg_desirability_other_singles
    end

  def to_s
    "#{@name}, #{@desirability}, #{@sought_desirability}, #{@hobbies}"
  end

  def fussiness
    @sought_desirability - @desirability
    end
  end

   		    	