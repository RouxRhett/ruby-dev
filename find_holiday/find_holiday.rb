require "./holiday_japan/lib/holiday_japan"
require "date"

def find_holiday(flag,date)
  puts "本日は#{date}です。"
  while true 
    if flag 
      puts "over"
      break
    else
      20.times do
        if HolidayJapan.check(date) == true
          print "#{date} ",date.strftime('%a')," ",HolidayJapan.name(date),"\n"
          flag = true
        end
        date += 1
      end
    end
  end
end

flag = false
date = Date.today

find_holiday(flag,date)
