   		    	
class Single
  attr_reader :name, :hobbies, :fussiness, :desirability

  def initialize(name, desirability, sought_desirability, hobbies)
    @name, @desirability, @sought_desirability, @hobbies = name, desirability, sought_desirability, hobbies
    @fussiness = fussiness
  end

  def match?(other, avg_desirability_other_singles)
    if self.is_a?(Zin)
      other.desirability += shared_hobbies(other).to_i
      other.desirability >= @sought_desirability || other.desirability > avg_desirability_other_singles
    elsif self.is_a?(Aga)
      other.desirability >= @sought_desirability || other.desirability > avg_desirability_other_singles
    end
  end

  def shared_hobbies(other)
    ((other.hobbies).intersection(@hobbies)).length
  end

  def to_s
    "#{@name}, #{@desirability}, #{@sought_desirability}, #{@hobbies}, #{@fussiness}"
  end

  def fussiness
    @sought_desirability - @desirability
  end
end



   		    	