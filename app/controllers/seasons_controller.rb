class SeasonsController < ApplicationController
  
  
  def index
    @seasons = Season.all
    
    respond_to do |format|
      format.html
      format.json { render :json => @seasons }
    end
  end
  
  def new
    @seasons = Season.new
  end
  
  def create
    @seasons = Season.new(params[:Season])
    
    if @seasons.save
      redirect_to seasons_url(@seasons), :notice => "Picture was successfully saved."
    else
      flash[:notice] = "Something went wrong."
      render 'new'
    end
  end
  
  def update
    @seasons = SeasonTeam.find_by_id(params[:id])
        
    if @seasons.update_attributes(params[:season])
      redirect_to seasons_url(@seasons), :notice => "Picture was successfully updated."
    else
      flash[:notice] = "Something went wrong."
      render 'edit'
    end
  end
  
  def edit
    @seasons = SeasonTeam.find_by_id(params[:id])
  end
  
  def show
    @season = Season.find_by_id(params[:id])
    @seasonteams = @season.season_teams
    @matches = @season.matches.uniq{|match| match.id}
#     @home_teams = @season.matches{|team1| team1.home_team}
#     @away_teams = @season.matches{|team2| team2.away_team}
#     @home_team = @seasonteams.find_by_id(@matches.home_team)
#     @away_team = @seasonteams.find_by_id(@matches.away_team)
    @teams = @season.teams.uniq{|team| team.id}
    @users = @season.users.uniq{|user| user.id}
    
#     @seasonteam = @teams.season_teams.map{|seasonteam| seasonteam.id}
#     @users = @seasonteam.users


    @seasons = Season.all

    respond_to do |format|
      format.html
      format.json { render :json => @seasons }
    end
  end
  
end