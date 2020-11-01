   		    	
require_relative 'single.rb'
require_relative 'dating_agency.rb'

dating_agency = DatingAgency.new

IO.foreach('singles.txt') do |line|
  data = line.split
  name = data[0]
  desirability = data[1].to_i
  sought_desirability = data[2].to_i
  dating_agency.add_single(Single.new(name, desirability, sought_desirability))
end

dating_agency.match
puts dating_agency.to_s
   		    	