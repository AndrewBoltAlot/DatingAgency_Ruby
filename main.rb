   		    	
require_relative 'single.rb'
require_relative 'dating_agency.rb'

dating_agency = DatingAgency.new

IO.foreach('single.txt') do |line|
  data = line.split
  gender = data[0]
  name = data[1]
  desirability = data[2].to_i
  sought_desirability = data[3].to_i
  hobbies = [data[4], data[5], data[6]]
  fussiness = data[3].to_i - data[2].to_i
  dating_agency.add_single(Single.new(gender, name, desirability, sought_desirability, hobbies, fussiness))
end

dating_agency.match
puts dating_agency.to_s
