class Season < ActiveRecord::Base
  attr_accessible :end, :frequency, :name, :number_of_courts, :start, :league_name, :number_of_timeslots
  
  has_many :season_teams
  has_many :teams, through: :season_teams
  has_many :users, through: :season_team_users
  has_many :season_team_users, through: :season_teams
  has_many :matches
  has_many :timeslots

  

  require 'date'
  
  def days_of_week

  end
  
  def say_hello(name)
 	
  end
  def create_match
  	total_match_count = self.matches.count
	season_team_count = self.season_teams.count
	matches_per_season_team = total_match_count / season_team_count
	count = 0
	match = Match.all	
	
		match.each do |m|	
			matchup = m.create
			matchup = 
			
			count = count + 1

 			if (count > matches_per_season_team)
				break
			end
		end
  end
  def generate_schedule
  
  	dateRange = (self.start..self.end)
  	daysOfweek = [Date::DAYNAMES.index(self.frequency)]
  	datesPlayed = dateRange.to_a.select {|dp| daysOfweek.include?(dp.wday)}
  	
  	datesPlayed.each do |game_date|
  	  		
  		timeslots = self.timeslots
  		timeslots.each do |ts|
  		
  			courtCount = self.number_of_courts
  			courts = (1..courtCount)
  			courtArray = courts.map{|c| "Court" + c.to_s}
  			
  			courts.each do |c|
  			
  				puts "#{c}, #{ts.name}, #{game_date}"
  				Match.create {|m| m.date = game_date, m.timeslot_id = ts.id, m.court = c, m.season_id = self.id}
  				
#   				matchArray.each do |m|
#   				
#   					m.date = game_date
#   					m.timeslot = ts.name
#   					m.court = c 
  					
  			end
  		end  	
  	end  	
  end  
end
