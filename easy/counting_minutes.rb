# Using the Ruby language, have the function CountingMinutesI(str) take the str 
# parameter being passed which will be two times (each properly formatted with a 
# colon and am or pm) separated by a hyphen and return the total number of 
# minutes between the two times. The time will be in a 12 hour clock format. For 
# example: if str is 9:00am-10:00am then the output should be 60. If str is 
# 1:00pm-11:00am the output should be 1320. 

def counting_minutes(str)
  times = str.split("-")
  time1 = convert(times[0])
  time2 = convert(times[1])

  if time1 > time2
    return 1440 - time1 + time2
  elsif time2 > time1
    return time2 - time1
  else
    return 1440
  end
end

def convert(time)
  hour, minutes = time.split(":")
  hour = if minutes[-2] == 'a'
    hour == "12" ? 0 : hour.to_i * 60
  else 
    hour == "12" ? 720 : (hour.to_i + 12) * 60
  end
  minutes = minutes[0..1]
 
  hour.to_i + minutes.to_i 
end

str = "1:00pm-11:00am"
second = "12:30pm-12:00am"
puts counting_minutes(second)


