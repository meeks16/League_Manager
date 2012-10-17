class TempsController < ApplicationController

	def sched 
		@temp = Temp.all 
	end

	def standing
		@temp = Temp.all 
	end	

end