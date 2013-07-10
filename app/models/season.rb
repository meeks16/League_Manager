class Season < ActiveRecord::Base
  attr_accessible :end, :frequency, :name, :number_of_courts, :start, :league_name
  has_many :season_teams
  has_many :teams, :through => :season_teams
  has_many :users, :through => :season_teams
  
end
