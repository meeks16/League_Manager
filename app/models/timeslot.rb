class Timeslot < ActiveRecord::Base
  attr_accessible :name
  
  belongs_to :match
end
