# Using the Ruby language, have the function MostFreeTime(strArr) read the 
# strArr parameter being passed which will represent a full day and will be filled 
# with events that span from time X to time Y in the day. The format of each event 
# will be hh:mmAM/PM-hh:mmAM/PM. For example, strArr may be ["10:00AM-12:30PM",
# "02:00PM-02:45PM","09:10AM-09:50AM"]. Your program will have to output the longest 
# amount of free time available between the start of your first event and the end 
# of your last event in the format: hh:mm. The start event should be the earliest 
# event in the day and the latest event should be the latest event in the day. The 
# output for the previous input would therefore be 01:30 (with the earliest event in 
# the day starting at 09:10AM and the latest event ending at 02:45PM). The input will 
# contain at least 3 events and the events may be out of order. 

def most_free_time(arr)
  times_final = []
  temp_times = []
  index = 0

  while index < arr.size
    temp = arr[index].split("-")
    temp_times << convert(temp[0])
    temp_times << convert(temp[1])
    times_final << temp_times
    temp_times = []
    index += 1
  end

  times_final = times_final.sort.flatten
  start_time = 2
  end_time = 1
  most = 0

  while start_time < times_final.size
    temp = times_final[start_time] - times_final[end_time]
    most = temp if temp > most 
    start_time += 2
    end_time += 2
  end
  
  minute = sprintf '%02d', most % 60
  hour = sprintf '%02d', (most/60)
  "#{hour}:#{minute}"
end

def convert(time)
  hour, minutes = time.split(":")

  hour = if minutes[-2] == 'A'
    hour == "12" ? 0 : hour.to_i * 60
  else
    hour == "12" ? 720 : (hour.to_i + 12) * 60
  end
  minutes = minutes[0..1]
  hour.to_i + minutes.to_i
end

puts most_free_time(["11:30AM-01:00PM","07:00AM-08:15AM","01:05PM-05:00PM","08:30AM-11:10AM"])