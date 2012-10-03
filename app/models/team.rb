class Team < ActiveRecord::Base
  attr_accessible :losses, :name, :sets_played, :wins
end
