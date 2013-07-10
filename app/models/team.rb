class Team < ActiveRecord::Base

  attr_accessible :losses, :name, :sets_played, :wins
  has_many :users
  belongs_to :season
  
end
