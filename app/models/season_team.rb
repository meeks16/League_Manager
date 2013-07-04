class SeasonTeam < ActiveRecord::Base
  attr_accessible :season_id, :team_id, :user_id
  has_many :teams
  has_many :users
end
