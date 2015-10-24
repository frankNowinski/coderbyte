# Have the function SwapII(str) take the str parameter and swap the case of each
# character. Then, if a letter is between two numbers (without separation), switch
# the places of the two numbers. For example: if str is "6Hello4 -8World, 7 yes3"
# the output should be 4hELLO6 -8wORLD, 7 YES3. 

def swap2(str)
  words = str.split(' ')
  numbers = (1..9).to_a
  index = 0
  counter = 1

  words.each do |word|
    while index < word.size
      if numbers.include?(word[index].to_i)
        while counter < word.size 
          if numbers.include?(word[counter].to_i)
            word[index], word[counter] = word[counter], word[index]
          end
          counter += 1
        end
      end
      index += 1
    end
    index = 0
    counter = 1
  end

  arr = []

  words.each do |word|
    word.chars do |c|
      c == c.upcase ? arr << c.downcase : arr << c.upcase
    end  
    arr << ' '
  end
  arr.join('')
end

puts swap2("6Hello4 -8World, 7 yes3")

