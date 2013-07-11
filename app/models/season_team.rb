class SeasonTeam < ActiveRecord::Base
  attr_accessible :season_id, :team_id, :user_id
  belongs_to :team
  belongs_to :user
  belongs_to :season 
end
