require_relative 'aga.rb'
require_relative 'single.rb'
require_relative 'couple.rb'
require_relative 'date.rb'


class DatingAgency
  def initialize
    @singles_list = []
    @couples_list = []
  end

  def add_single(single)
    @singles_list << single
  end

  def match
    i = 0

    while i < @singles_list.size/2
      single1 = @singles_list[i]
      single2 = @singles_list[-i-1]
      date = Date.new(single1, single2)
      if date.match?(avg_desirability_other_singles(single1, single2))
        create_couple(i, -i-1)
      else
        i += 1 # no need to increment i if a couple is created
      end
    end
  end

  def organize_by_fussiness
    @singles_list.sort_by {|single| [single.fussiness, single.name]}
  end

  def to_s
    str = "Couples:\n"
    @couples_list.each do |couple|
      str += couple.to_s + "\n"
    end
    str +=  "Singles:\n"
    @singles_list.each do |single|
      str += single.name + "\n"
    end
    str
  end

  private

  def create_couple(index1, index2)
    @couples_list << Couple.new(@singles_list[index1], @singles_list[index2])
    @singles_list.delete_at(index1)
    @singles_list.delete_at(index2)
  end

  def avg_desirability_other_singles(ignore_single1, ignore_single2)
    total_desirability = 0
    @singles_list.each do |single|
      if !single.equal?(ignore_single1) && !single.equal?(ignore_single2)
        total_desirability += single.desirability
      end
    end
    (@singles_list.size-2) > 0 ? total_desirability / (@singles_list.size-2).to_f : 0.0
  end
end
