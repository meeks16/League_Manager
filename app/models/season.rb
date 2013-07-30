class Season < ActiveRecord::Base
  attr_accessible :end, :frequency, :name, :number_of_courts, :start, :league_name
  has_many :season_teams
  has_many :teams, through: :season_teams
  has_many :users, through: :season_team_users
  has_many :season_team_users, through: :season_teams
  has_many :matches
  has_many :timeslots

  

  require 'date'
  
  def generate_schedule
  
  	dateArray = Array.new
  	count = 0
  	dateRange = (self.start..self.end)
  	daysOfweek = [2]
  	datesPlayed = dateRange.to_a.select {|dp| daysOfweek.include?(dp.wday)}
  	dateCount = datesPlayed.count
  	
  	datesPlayed.each do |game_date|
  	
  		puts game_date
#   		match = Match.create
#   		match.date = game_date
  		
#   		timeslot.each do |ts|
#   			timeCount = ts.count
#   			ts.create
#   			
#   			court.each do |c|
#   				courtCount = c.count
#   				c.create
#   				if (count > courtCount)
#   			end
#   			
#   			if (count > timeCount)
#   				break 
#   			end
#   		end
  		
#   		dateArray[count] = match
  		count = count + 1
  		
  		if (count > dateCount)
  			break 
  		end
  	
  	end
  	
  end
  
end
