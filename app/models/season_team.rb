class SeasonTeam < ActiveRecord::Base
  attr_accessible :season_id, :team_id, :user_id
  belongs_to :teams
  belongs_to :users
  belongs_to :season 
end
