class Timeslot < ActiveRecord::Base
  attr_accessible :name, :season_id
  
  has_many :matches
  belongs_to :season
  

end
