class Match < ActiveRecord::Base
  attr_accessible :date, :timeslot, :season_home_team_id, :season_away_team_id, :court, :winner, :season_id
  
  belongs_to :season
  belongs_to :season_team 
  belongs_to :season_home_team, :foreign_key => "season_home_team_id", :class_name => "SeasonTeam"
  belongs_to :season_away_team, :foreign_key => "season_away_team_id", :class_name => "SeasonTeam"
  has_many :games
  has_many :timeslots
  
end
