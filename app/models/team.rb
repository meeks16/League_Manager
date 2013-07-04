class Team < ActiveRecord::Base

  attr_accessible :losses, :name, :sets_played, :wins
  has_many :users, :through => :season_teams
  
end
