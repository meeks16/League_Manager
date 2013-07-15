class HomeController < ApplicationController
  def index
  	@season = Season.where("start<'#{DateTime.now}' and end>'#{DateTime.now}'").first
  	@seasons = Season.all
  	@teams = Team.all
  	@users = User.all
  end
  
  def show
  	@season = Season.find(params[:id])
  end
end
