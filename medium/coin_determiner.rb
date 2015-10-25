# Have the function CoinDeterminer(num) take the input, which will be an 
# integer ranging from 1 to 250, and return an integer output that will specify 
# the least number of coins, that when added, equal the input integer. Coins are 
# based on a system as follows: there are coins representing the integers 1, 5, 7, 9,
# and 11. So for example: if num is 16, then the output should be 2 because you can 
# achieve the number 16 with the coins 9 and 7. If num is 25, then the output should 
# be 3 because you can achieve 25 with either 11, 9, and 5 coins or with 9, 9, and 7 
# coins. 

def coin_determiner(num)
  coins = 0
  index = 11

  while index >= 5
    if num >= index
      num -= index
      coins += 1
    else
      index -= 2
    end
  end
  coins + num
end

# Alternative solution

def coin_determiner(num)
  return num if num < 5

  n, remainder = num.divmod(11)
  return n if remainder == 0
  return n + 1 if remainder.odd?
  return n + 2 if remainder.even?
end

puts coin_determiner(16)


