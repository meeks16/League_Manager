class Season < ActiveRecord::Base
  attr_accessible :end, :frequency, :name, :number_of_courts, :start, :league_name, :number_of_timeslots
  
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
  		timeslotCount = self.number_of_timeslots
  		timeslots = self.timeslots
  		
  		timeslots.each do |ts|
  		
  			puts ts.name
  			courtCount = self.number_of_courts
  			court = self.matches
  			
  			court.each do |match|
  			
  				mat = Match.new
  				mat.date = match.game_date
  				mat.timeslot = ts.name

  				
  				if (count > courtCount)
  					break
  				end
  			end
  			
  			if (count > timeslotCount)
  				break 
  			end
  		end
  		
#   		dateArray[count] = mat
  		count = count + 1
  		
  		if (count > dateCount)
  			break 
  		end
  	
  	end
  	
  end
  
end
