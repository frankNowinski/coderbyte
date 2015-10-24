# Have the function TripleDouble(num1,num2) take both parameters being passed, 
# and return 1 if there is a straight triple of a number at any place in num1 and 
# also a straight double of the same number in num2. For example: if num1 equals 
# 451999277 and num2 equals 41177722899, then return 1 because in the first parameter 
# you have the straight triple 999 and you have a straight double, 99, of the same 
# number in the second parameter. If this isn't the case, return 0. 

def triple_double(num1, num2)
  num1 = num1.to_s.split('')
  counter = 1
  double = 0
  trip_dub = 0

  num1.each_with_index do |n, index|
    while n == num1[index+1]
      counter += 1
      index += 1
    end
    if counter == 3
      double = n*2
      break
    end
    counter = 1
  end
  trip_dub = 1 if num2.to_s.include?(double)
  trip_dub
end

puts triple_double(451999277, 41177722899)

