class TempsController < ApplicationController

	def sched 
		render 'sched'
	end

	def standing
		render 'standings' 
	end	

end