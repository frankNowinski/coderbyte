# Have the function SwapCase(str) take the str parameter and swap the case of each character. For example: if str is "Hello World" the output should be hELLO wORLD. Let numbers and symbols stay the way they are. (Without using the Ruby method swapcase).

def swap_case(str)
  str = str.chars.map do |c|
    if c == c.upcase
      c = c.downcase
    elsif c == c.downcase
      c = c.upcase
    end
  end
 return str.join('')
end

puts swap_case("Hello World!")