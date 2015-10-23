# Have the function FormattedDivision(num1,num2) take both parameters being 
# passed, divide num1 by num2, and return the result as a string with properly 
# formatted commas and 4 significant digits after the decimal place. For example:
# if num1 is 123456789 and num2 is 10000 the output should be "12,345.6789". The 
# output must contain a number in the one's place even if it is a zero. 

def formatted_division(num1, num2)
  sum = num1.fdiv(num2).round(4)
  number, decimal = sum.to_s.split(".")
  number.reverse!

  i = 3
  while i < number.size
    number.insert(i, ",")
    i += 3
  end
  number.reverse!
  number.insert(number.size, ".")
  return number + decimal
end

puts formatted_division(123456789, 10000)
