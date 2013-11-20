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
  
  def get_combination(season_team_ids)
  
  	matchup_combos = season_team_ids.combination(2).to_a
  	matchup_combos
  	
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
  	
  	range.each do |r| pairs.push( [home_teams[r], away_teams[r]] )
  	
  	end
  	
  	pairs
  
  end
  
  def get_matchups(season_team_ids)	
     	
   	teams_splitted = self.split_teams(season_team_ids)
  	matchups = self.get_pairs(teams_splitted)
  	matchups
  	
  end
  
  def get_all_matchups
    	
  	total_match_count = self.matches.count
	season_team_count = self.season_teams.count
	if season_team_count.odd?
		season_team_count = season_team_count + 1
	end
	count = season_team_count / 2
	rotation_count = total_match_count / count
	pairsArray = Array.new
	season_team_ids = self.get_season_team_ids
	if season_team_ids.count.odd? then
    
      		season_team_ids = season_team_ids.push(0)  		
  	end
	range = (1..rotation_count)

	range.each do |r|
	   	season_team_ids = self.rotate(season_team_ids)
	   	matchups = self.get_matchups(season_team_ids)
	   	pairsArray.push(matchups)
	end
	
	matchups = pairsArray.flatten(1)
	matchups

  end
  
  def randomize
  	
  	timeslot_count = self.timeslots.count
  	court_count = self.number_of_courts
  	count = timeslot_count * court_count
  	randomizedArray = Array.new
  
  end
  

  
  def assign_teams
    timeslot_count = self.timeslots.count
  	court_count = self.number_of_courts
  	mymatches = self.matches.clone
  	matchups = self.get_all_matchups
  	match_per_day = timeslot_count * court_count
  	
  	while !mymatches.empty? 
#   		matches_for_day = mymatches.shift(match_per_day).shuffle
  		matches_for_day = mymatches.shift(match_per_day)
  		matchups_for_day = matchups.shift(match_per_day)
  	
  		matches_for_day.each_index do |i|
	  		if matchups_for_day[i].first > 0
	  			matches_for_day[i].season_home_team_id = matchups_for_day[i].first
	  		else
	  			matches_for_day[i].season_home_team_id = nil
	  		end
	  		
	  		if matchups_for_day[i].last > 0
	  			matches_for_day[i].season_away_team_id = matchups_for_day[i].last
	  		else
	  			matches_for_day[i].season_away_team_id = nil
	  		end
	  		
#   			matches_for_day[i].season_home_team_id = matchups_for_day[i].first
#   			matches_for_day[i].season_away_team_id = matchups_for_day[i].last
  			puts "#{matches_for_day[i].date}, #{matches_for_day[i].timeslot}, #{matches_for_day[i].court}, #{matches_for_day[i].season_away_team_id}, #{matches_for_day[i].season_home_team_id}"
  			matches_for_day[i].save
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
#    				puts "season: #{self.id} court:#{c}, ts:#{ts.name}, gamedate:#{game_date}"
  				Match.create {|m| m.date = game_date, m.timeslot_id = ts.id, m.court = c, m.season_id = self.id }
  				
  			end
  		end  	
  	end  	
  end 
  
  def generate_games
  	matches = self.matches
  	number_of_games = 3  
  		
  	
  	matches.each do |m|
  		idx = 0
  		number_of_games.times do
  			idx = idx +1
  			m.games.create {|g| g.match_id = m.id, g.sequence_id = idx}
  		end
  	end
  end
  
  
end
