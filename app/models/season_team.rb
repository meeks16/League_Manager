class SeasonTeam < ActiveRecord::Base
  attr_accessible :season_id, :team_id
  belongs_to :team
  belongs_to :season 
  has_many :home_matches, :foreign_key => "season_home_team_id", :class_name => "Match"
  has_many :away_matches, :foreign_key => "season_away_team_id", :class_name => "Match"
  has_many :season_team_users
  has_many :users, through: :season_team_users
end
