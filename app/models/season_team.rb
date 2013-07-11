class SeasonTeam < ActiveRecord::Base
  attr_accessible :season_id, :team_id, :season_team_user_id
  belongs_to :team
  belongs_to :season 
  has_and_belongs_to_many :season_team_users
  has_many :users, through: :season_team_users
end
