<<<<<<< HEAD
# Have the function ABCheck(str) take the str parameter being passed and return 
# the string true if the characters a and b are separated by exactly 3 places 
# anywhere in the string at least once (ie. "lane borrowed" would result in true 
# because there is exactly three characters between a and b). Otherwise return 
# the string false. 
=======
# Have the function ABCheck(str) take the str parameter being passed 
# and return the string true if the characters a and b are separated 
# by exactly 3 places anywhere in the string at least once (ie. "lane borrowed"
# would result in true because there is exactly three characters between a and b). 
# Otherwise return the string false. 
>>>>>>> 46ac09378055965ccd0294f7f5a5a47ba69906d3

def ab_check(string)
  string.scan(/(a(.){3}b)|(b(.){3}a)/).count > 0
end

puts ab_check("Laura sobs")

