def number_search(str)
  return str.split(/\D/).select{|x| x =~ /\S/}.map{|n| n.to_i}.inject(:+)
end

# Alternative solution

def number_search(str)

  numbers = []
  index = 0
  counter = 1

  while index <= str.size
    if str[index] =~ /\d/
      if str[index+counter] =~ /\d/
        while str[index+counter] =~ /\d/
          counter+=1 
        end
        numbers << str[index..counter-1].to_i
        index += counter
        counter = 1
      else
        numbers << str[index].to_i
      end
    end
    index += 1
  end

  return numbers.inject(:+)
end

puts number_search("100 2One Number*1*")