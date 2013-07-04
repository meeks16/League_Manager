class HomeController < ApplicationController
  def index
  	@season = Season.where("start<'#{DateTime.now}' and end>'#{DateTime.now}'").first
  end
end
