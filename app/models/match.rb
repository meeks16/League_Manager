class Match < ActiveRecord::Base
  attr_accessible :date, :timeslot_id, :season_home_team_id, :season_away_team_id, :court, :winner, :season_id
  
  belongs_to :season
  belongs_to :season_team 
  belongs_to :season_home_team, :foreign_key => "season_home_team_id", :class_name => "SeasonTeam"
  belongs_to :season_away_team, :foreign_key => "season_away_team_id", :class_name => "SeasonTeam"
  has_many :games
  belongs_to :timeslot
  
  def display_home_team_name
  	
  	if self.season_home_team.nil?
  	
  		home_team = "bye"
  	else
  		home_team = self.season_home_team.team.name
  	end
  	
  	home_team
  end
  
    def display_away_team_name
  	
  	if self.season_away_team.nil?
  	
  		away_team = "bye"
  	else
  		away_team = self.season_away_team.team.name
  	end
  	
  	away_team
  end
  
  def display_opponent
  	if self.season_home_team
  		opponent = self.season_away_team.team.name
  	else if self.season_away_team
  			opponent = self.season_home_team.team.name
  		end
  	end
  	opponent
  	
  end
#   def display_opponent
#   
# 	if self.season_home_team.nil?
# 		home_team = "bye"
# 	else
# 		home_team = self.season_home_team.team.name
# 	end
#   
#   	if self.season_home_team.nil?
#   		opponent = "bye"
#   	
#   	else if self.season_home_team
#   	
#   	else 
#   		opponent = self.season_away_team.team.name
#   	end
#   
#   end
end

