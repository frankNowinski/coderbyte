# Have the function FibonacciChecker(num) return the string yes if the number 
# given is part of the Fibonacci sequence. This sequence is defined by: Fn = Fn-1 + 
# Fn-2, which means to find Fn you add the previous two numbers up. The first two 
# numbers are 0 and 1, then comes 1, 2, 3, 5 etc. If num is not in the Fibonacci 
# sequence, return the string no. 

def fibonacci_checker(num)
  checker = [0,1]

  while checker[1] < num
    checker[0], checker[1] = checker[1], checker[0] + checker[1]
  end
  return "yes" if checker[1] == num
  "no"
end

puts fibonacci_checker(34)