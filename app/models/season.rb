class Season < ActiveRecord::Base
  attr_accessible :end, :frequency, :name, :number_of_courts, :start, :league_name, :number_of_timeslots
  
  has_many :season_teams
  has_many :teams, through: :season_teams
  has_many :users, through: :season_team_users
  has_many :season_team_users, through: :season_teams
  has_many :matches
  has_many :timeslots

  

  require 'date'
  
  def rotate(season_team_ids)
  	fixed_team = season_team_ids.shift
  	rotated_season_team_ids = season_team_ids.rotate(-1)
  	new_season_team_ids = rotated_season_team_ids.unshift(fixed_team)
  	
  	new_season_team_ids
  	
  end
  
  def get_season_team_ids
  	s_teams = self.season_teams
  	s_team_ids = s_teams.map {|st| st.id}
  	
  	s_team_ids
  	
  end
  
  
  
  def split_teams(season_team_ids)
  	season_team_id_count = season_team_ids.count
  	range = season_team_id_count / 2
  	teams_splited = season_team_ids.each_slice(range).to_a
  	
  	teams_splited
  	
  end
  
  
  def get_pairs(splited_teams)
  	home_teams = splited_teams.first
  	away_teams = splited_teams.last.reverse!
  	match_count = home_teams.count - 1
  	range = (0..match_count)
  	
  	pairs = []
  	range.each do |r| matches.push( [home_teams[r], away_teams[r]] )
  	end
  	
  	pairs
  
  end
  
  def get_matchups(season_team_ids)
  	# number of iterations till match_upslots are filled
  	# get_season_team_ids() the second time must get ther new array not the self.season_teams
  	# Assign these matchups for home and away season_teams.
  	# number of total matches.
  	
  end
  def rotate_teams
  
   	dateRange = (self.start..self.end)
  	daysOfweek = [Date::DAYNAMES.index(self.frequency)]
  	datesPlayed = dateRange.to_a.select {|dp| daysOfweek.include?(dp.wday)}
  	teams = self.season_teams
  	id = teams.map {|x| x.team_id}
  	rotate = id.push id.shift
  	
  	datesPlayed.each do |game_date|
  		newArray.rotate
  		teamArray = Array.new
  		
	  	teamArray.each do |t|
	  		
	  	end
	  	
	  	
# 	  	rotate.each do ||
		return rotate
 	end
  end
  
  def say_hello
  	s_teams = self.season_teams
  	s_team_count = season_teams.count
  	s_team_array = s_teams.each_slice(s_team_count / 2).to_a
  	home_array = Array.new(s_team_array.first)  #(s_team_count / 2) {|h| h = }
   	away_array = Array.new(s_team_array.last)
   	away_arrayr = away_array.reverse!
  
#  	return away_array
 	return away_arrayr
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
