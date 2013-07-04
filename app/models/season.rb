class Season < ActiveRecord::Base
  attr_accessible :end, :frequency, :name, :number_of_courts, :start
end
