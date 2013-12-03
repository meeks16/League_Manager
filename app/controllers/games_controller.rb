class GamesController < ApplicationController

def index
end

def show
end

def edit
	@game = Game.find(params[:id])
	@match = @game.match
	@hteam = @match.season_home_team
	@ateam = @match.season_away_team

end

end
