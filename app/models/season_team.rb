class SeasonTeam < ActiveRecord::Base
  attr_accessible :season_id, :team_id
  belongs_to :team
  belongs_to :season 
  belongs_to :match
  has_many :season_team_users
  has_many :users, through: :season_team_users
end
