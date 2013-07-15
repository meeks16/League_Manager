class SeasonTeam < ActiveRecord::Base
  attr_accessible :season_id, :team_id
  belongs_to :team
  belongs_to :season 
  has_many :season_team_users
  has_many :users, through: :season_team_users
end
