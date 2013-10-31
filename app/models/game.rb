class Game < ActiveRecord::Base
  attr_accessible :match_id, :sequence_id, :teamA_score, :teamB_score, :number
  
  belongs_to :match
end


