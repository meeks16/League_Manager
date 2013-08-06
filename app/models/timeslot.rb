class Timeslot < ActiveRecord::Base
  attr_accessible :name
  
  has_many :matches
  belongs_to :season
  

end
