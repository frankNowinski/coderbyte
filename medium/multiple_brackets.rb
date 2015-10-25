# Have the function MultipleBrackets(str) take the str parameter being passed 
# and return 1 NumberofBrackets if the brackets are correctly matched and each 
# one is accounted for. Otherwise return 0. For example: if str is 
# "(hello [world])(!)", then the output should be 1 3 because all the brackets are 
# matched and there are 3 pairs of brackets, but if str is "((hello [world])" the the 
# output should be 0 because the brackets do not correctly match up. Only 
# "(", ")", "[",and "]" will be used as brackets. If str contains no brackets return 1.

def multiple_brackets(str)
  par_status = false
  brack_status = false

  par_front = str.scan(/[(]/).count
  par_back = str.scan(/[)]/).count
  par_status = true if par_front == par_back

  brack_front = str.scan(/\[/).count
  brack_back = str.scan(/\]/).count
  brack_status = true if brack_front == brack_back

  brack_status && par_status ? brackets = 1 : brackets = 0
  n = (par_front + par_back + brack_front + brack_back) / 2

  return brackets == 1 ? "#{brackets} #{n}" : brackets
end

puts multiple_brackets("(hello [world])(!)")