# Have the function DashInsertII(str) insert dashes ('-') between each two odd 
# numbers and insert asterisks ('*') between each two even numbers in str. For 
# example: if str is 4546793 the output should be 454*67-9-3. Don't count zero as 
# an odd or even number. 

def dash_insert2(str)
  num = str.to_s
  index = num.size-1

  while index > 0
    if num[index].to_i != 0 || num[index+1].to_i != 0
      num.insert(index, "-") if num[index].to_i.odd? && num[index-1].to_i.odd?
      num.insert(index, "*") if (num[index].to_i.even? && num[index-1].to_i.even?) 
    end
    index -= 1
  end
  num
end

puts dash_insert2(4546793)