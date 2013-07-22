class Match < ActiveRecord::Base
  attr_accessible :date, :timeslot, :teamA, :teamB, :court, :winner, :season_id
  
  belongs_to :season
  has_many :games
  
end
