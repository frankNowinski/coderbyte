# Have the function DivisionStringified(num1,num2) take both parameters being 
# passed, divide num1 by num2, and return the result as a string with properly 
# formatted commas. If an answer is only 3 digits long, return the number with no 
# commas (ie. 2 / 3 should output "1"). For example: if num1 is 123456789 and 
# num2 is 10000 the output should be "12,345". 

def division_stringified(num1, num2)
  sum = num1.fdiv(num2).ceil.to_s 
  i = sum.size
  
  while i > 3
    i -= 3 
    sum.insert(i, ",") 
  end
  sum
end

puts division_stringified(100100, 10)
