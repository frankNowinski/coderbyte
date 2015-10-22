# Have the function LetterChanges(str) take the str parameter being passed and modify it using the following algorithm. Replace every letter in the string with the letter following it in the alphabet (ie. c becomes d, z becomes a). Then capitalize every vowel in this new string (a, e, i, o, u) and finally return this modified string. 

def letter_changes(str)
  str.gsub(/[a-zA-Z]/) {|c| c.next}.gsub(/[aeiou]/) {|x| x.upcase}
end

puts letter_changes("fun times!")