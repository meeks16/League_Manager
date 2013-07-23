class Match < ActiveRecord::Base
  attr_accessible :date, :timeslot, :teamA, :teamB, :court, :winner, :season_id
  
  belongs_to :season
  has_many :season_teams
  has_many :teams, through: :season_teams
  has_many :games
  
end