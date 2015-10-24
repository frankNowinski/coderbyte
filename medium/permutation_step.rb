# Have the function PermutationStep(num) take the num parameter being passed 
# and return the next number greater than num using the same digits. For example:
# if num is 123 return 132, if it's 12453 return 12534. If a number has no greater
# permutations, return -1 (ie. 999). 

def permutation_step(num)
  perm = num.to_s.split('').permutation.map(&:join).uniq.sort
  return -1 if perm.size == 1

  perm.each_with_index do |n, index|
    if num.to_s == n
      return perm[index+1]
    end
  end
  -1
end

puts permutation_step(123)

