# Have the function PrimeChecker(num) take num and return 1 if any arrangement of
# num comes out to be a prime number, otherwise return 0. For example: if num is
# 910, the output should be 1 because 910 can be arranged into 109 or 019, both 
# of which are primes. 

def prime_checker(num)
  checker = 0
  checker = 0 if num.to_s.size < 2

  perm = num.to_s.split('').permutation.map(&:join)

  perm.each do |n|
    checker = 1 if is_prime?(n)
  end
  return checker 
end

def is_prime?(num)
  (2..Math.sqrt(num.to_i)).each do |prime|
    false if num % prime == 0
  end
end

puts prime_checker(910)

