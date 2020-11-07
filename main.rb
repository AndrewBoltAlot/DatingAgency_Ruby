require_relative 'aga.rb'
require_relative 'zin.rb'
require_relative 'single.rb'
require_relative 'dating_agency.rb'

dating_agency = DatingAgency.new

IO.foreach('single.txt') do |line|
  data = line.split
  name = data[1]
  desirability = data[2].to_i
  sought_desirability = data[3].to_i
  hobbies = []
  if data.length >= 4
    i =4
    while i < data.length
      hobbies.push(data[i])
      i+=1
    end
  end
  if data[0] == 'a'
  dating_agency.add_single(Aga.new(name, desirability, sought_desirability, hobbies))
  end
  if data[0]== 'z'
  dating_agency.add_single(Zin.new(name, desirability, sought_desirability, hobbies))
  end
end

dating_agency.match
puts dating_agency.to_s
