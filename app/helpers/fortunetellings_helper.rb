module FortunetellingsHelper
  def seiza(month, day)
    if month == 1 && day.between?(1,19)  || month == 12 && day.between?(22,31)
        "山羊"
      elsif month == 2 && day.between?(1,18) || month == 1 && day.between?(20,31) 
        "水瓶"
      elsif month == 3 && day.between?(1,20) || month == 2 && day.between?(19,29) 
        "魚"
      elsif month == 4 && day.between?(1,19) || month == 3 && day.between?(21,31) 
        "牡羊"
      elsif month == 5 && day.between?(1,20) || month == 4 && day.between?(20,30) 
        "牡牛"
      elsif month == 6 && day.between?(1,21) || month == 5 && day.between?(21,31) 
        "双子"
      elsif month == 7 && day.between?(1,22) || month == 6 && day.between?(22,30) 
        "蟹"
      elsif month == 8 && day.between?(1,22) || month == 7 && day.between?(23,31) 
        "獅子"
      elsif month == 9 && day.between?(1,22) || month == 8 && day.between?(23,31) 
        "乙女"
      elsif month == 10 && day.between?(1,23) || month == 9 && day.between?(23,30) 
        "天秤"
      elsif month == 11 && day.between?(1,22) || month == 10 && day.between?(24,31) 
        "蠍"
      elsif @born_info.month == 12 && @born_info.day.between?(1,21) || @born_info.month == 11 && @born_info.day.between?(23,30) 
        "射手"
    end
  end
end
