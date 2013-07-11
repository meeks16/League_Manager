class Team < ActiveRecord::Base

  attr_accessible :losses, :name, :sets_played, :wins
  has_many :season_teams
  has_many :seasons, through: :season_teams
  has_many :users, through: :season_teams
  
end
