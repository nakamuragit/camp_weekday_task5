class FortunetellingsController < ApplicationController
  def show
    require "date"
    @born_info = Date.parse(params[:born_info])
    @today = Date.today
    if @born_info.yday == @today.yday
      @message = "今日があなたの誕生日です。" 
    end
    @tosi = (@today.to_s.delete("-").to_i - params[:born_info].to_i)/10000

    fortune = ["大吉","中吉","吉","小吉","凶","大凶"]
    @fortune = fortune[rand(6)]
    if @born_info.month == 1 && @born_info.day.between?(1,19)  || @born_info.month == 12 && @born_info.day.between?(22,31)
      @sign = "山羊"
      elsif @born_info.month == 2 && @born_info.day.between?(1,18) || @born_info.month == 1 && @born_info.day.between?(20,31) 
        @sign = "水瓶"
      elsif @born_info.month == 3 && @born_info.day.between?(1,20) || @born_info.month == 2 && @born_info.day.between?(19,29) 
        @sign = "魚"
      elsif @born_info.month == 4 && @born_info.day.between?(1,19) || @born_info.month == 3 && @born_info.day.between?(21,31) 
        @sign = "牡羊"
      elsif @born_info.month == 5 && @born_info.day.between?(1,20) || @born_info.month == 4 && @born_info.day.between?(20,30) 
        @sign = "牡牛"
      elsif @born_info.month == 6 && @born_info.day.between?(1,21) || @born_info.month == 5 && @born_info.day.between?(21,31) 
        @sign = "双子"
      elsif @born_info.month == 7 && @born_info.day.between?(1,22) || @born_info.month == 6 && @born_info.day.between?(22,30) 
        @sign = "蟹"
      elsif @born_info.month == 8 && @born_info.day.between?(1,22) || @born_info.month == 7 && @born_info.day.between?(23,31) 
        @sign = "獅子"
      elsif @born_info.month == 9 && @born_info.day.between?(1,22) || @born_info.month == 8 && @born_info.day.between?(23,31) 
        @sign = "乙女"
      elsif @born_info.month == 10 && @born_info.day.between?(1,23) || @born_info.month == 9 && @born_info.day.between?(23,30) 
        @sign = "天秤"
      elsif @born_info.month == 11 && @born_info.day.between?(1,22) || @born_info.month == 10 && @born_info.day.between?(24,31) 
        @sign = "蠍"
      elsif @born_info.month == 12 && @born_info.day.between?(1,21) || @born_info.month == 11 && @born_info.day.between?(23,30) 
        @sign = "射手"
    end
  end
end
