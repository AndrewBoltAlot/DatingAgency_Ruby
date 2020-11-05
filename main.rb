   		    	
require_relative 'single.rb'
require_relative 'dating_agency.rb'

dating_agency = DatingAgency.new

IO.foreach('single.txt') do |line|
  data = line.split
  name = data[1]
  desirability = data[2].to_i
  sought_desirability = data[3].to_i
  hobbies =[]

  if data.length > 4
    i =4
    while i < data.length
      hobbies.push(data[i])
      i+=1
    end
  end
  dating_agency.add_single(Single.new(name, desirability, sought_desirability, hobbies))
end

dating_agency.match
puts dating_agency.to_s
