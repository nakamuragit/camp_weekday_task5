class FortunetellingsController < ApplicationController
  include FortunetellingsHelper
  def show
    require "date"
    @born_info = Date.parse(params[:born_info])
    @today = Date.today
    @message = "今日があなたの誕生日です。" if @born_info.yday == @today.yday
    @tosi = (@today.to_s.delete("-").to_i - params[:born_info].to_i)/10000
    @fortune = ["大吉","中吉","吉","小吉","凶","大凶"].sample
    @sign = seiza(@born_info.month, @born_info.day)
  end
end
