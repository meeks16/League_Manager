class SeasonTeamUser < ActiveRecord::Base
  attr_accessible :season_team_id, :user_id
  has_many :season_teams
  has_many :teams, through: :season_teams
  has_many :seasons, through: :season_teams
  belongs_to :season_team
  belongs_to :user
  
end
