class SeasonsController < ApplicationController
  
  
  def index
    @seasons = Season.all
    
    respond_to do |format|
      format.html
      format.json { render :json => @seasons }
    end
  end
  
  def new
    @season = Season.new
  end
  
  def create
    @season = Season.new(params[:Season])
    
    if @season.save
      redirect_to seasons_url(@season), :notice => "Picture was successfully saved."
    else
      flash[:notice] = "Something went wrong."
      render 'new'
    end
  end
  
  def update
    @season = Season.find_by_id(params[:id])
        
    if @season.update_attributes(params[:season])
      redirect_to seasons_url(@season), :notice => "Picture was successfully updated."
    else
      format.html { render action: "edit" }
      format.json { render json: @season.errors, status: :unprocessable_entity }
     end
  end
  
  def edit
    @season = Season.find_by_id(params[:id])
  end
  
  def show
    @season = Season.find_by_id(params[:id])
    @seasonteams = @season.season_teams
    @seasonteam = @seasonteams.find_by_id(params[:id])
    @matches = @season.matches.uniq{|match| match.date}
    @teams = @season.teams.uniq{|team| team.id}
    @users = @season.users.uniq{|user| user.id}

    @seasons = Season.all

    respond_to do |format|
      format.html
      format.json { render :json => @seasons }
    end
  end
  
  def assign
    @season = Season.find(params[:id])
    @season.assign_teams

    respond_to do |format|
      format.html { redirect_to season_url }
      format.json { head :no_content }
    end
  end
  
end