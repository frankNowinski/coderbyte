# Have the function PrimeTime(num) take the num parameter being passed and return 
# the string true if the parameter is a prime number, otherwise return the string 
# false. The range will be between 1 and 2^16.
 
def prime_time(num)
  return true if num == 2 || num == 3 || (num % 2 != 0 && num & 3 != 0)
  false
end

puts prime_time(2)