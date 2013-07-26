class Season < ActiveRecord::Base
  attr_accessible :end, :frequency, :name, :number_of_courts, :start, :league_name
  has_many :season_teams
  has_many :teams, through: :season_teams
  has_many :users, through: :season_team_users
  has_many :season_team_users, through: :season_teams
  has_many :matches

  def generate_schedule
  
  	
  	count = 0
  	
  	dateRange = Season.start..Season.end
  	daysOfweek = [2] 
  	datesPlayed = dateRange.to_a.select {|dp| daysOfweek.include?(dp.wday)}
  	dateCount = datesPlayed.count
  	
  	datesPlayed.each do |matches|
  		match = Match.new
  		match.date = matches.select{|date| puts date}
  		
  		matchArray[count] = match
  		count = count + 1
  		
  		if (count > dateCount)
  			break 
  		end
  	
  	end
  	
  end
  
end
