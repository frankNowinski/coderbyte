# Have the function StringScramble(str1,str2) take both parameters being passed
# and return the string true if a portion of str1 characters can be rearranged to 
# match str2, otherwise return the string false. For example: if str1 is "rkqodlw" 
# and str2 is "world" the output should return true. Punctuation and symbols will 
# not be entered with the parameters. 

def string_scramble(str1, str2)

  str2.chars do |char|
    return false if !str1.include?(char)
  end
  true
  
end

puts string_scramble("lrdwodlasdf", "world")