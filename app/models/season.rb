class Season < ActiveRecord::Base
  attr_accessible :end, :frequency, :name, :number_of_courts, :start, :league_name
  has_many :season_teams
  has_many :teams, through: :season_teams
  has_many :users, through: :season_team_users
  has_many :season_team_users, through: :season_teams
  has_many :mathes
  
  def generate_schedule
  	
  end
  
end
