#ライブラリの読み込み
require "./holiday_japan/lib/holiday_japan"
require "date"

#メソッドの定義
def find_holiday(flag,date)
  puts "本日は#{date}です。"
  while true
    #flag == trueが成立したらループ終了 
    if flag
      break
    else
      #20回繰り返し
      20.times do
        #祝日かどうかの判定、祝日であれば出力,flagをtrueにする。
        if HolidayJapan.check(date) == true
          print "#{date} ",date.strftime('%a')," ",HolidayJapan.name(date),"\n"
          flag = true
        end
        #くりかえじ1回毎に1日ずらす
        date += 1
      end
    end
  end
end

#変数の初期化(今日の日付と判定)
flag = false
date = Date.today

#メソッドの呼び出し
find_holiday(flag,date)
