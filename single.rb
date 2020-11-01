   		    	
class Single
  attr_reader :name, :desirability

  def initialize(name, desirability, sought_desirability)
    @name, @desirability, @sought_desirability = name, desirability, sought_desirability
  end

  def match?(other, avg_desirability_other_singles)
    other.desirability >= @sought_desirability || other.desirability > avg_desirability_other_singles
  end

  def to_s
    "#{@name}, #{@desirability}, #{@sought_desirability}"
  end
end
   		    	