class SeasonTeamsController < ApplicationController


  def standing
#   	@seaon_team = SeasonTeam.all
  	@season = Season.find(params[:id])
    @season_teams = @season.season_teams

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @season_teams }
    end
  end
  

  # GET /teams/1
  # GET /teams/1.json
  def show
  	
    @season_team = SeasonTeam.find(params[:id])
    @season = @season_team.season
    @users = @season_team.users.uniq{|user| user.id}
    @hmatch = @season_team.home_matches
    @amatch = @season_team.away_matches
    @matches = @hmatch | @amatch

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @season_team }
    end
  end

  # GET /teams/new
  # GET /teams/new.json
  def new
    @season_team = SeasonTeam.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @season_team }
    end
  end

  # GET /teams/1/edit
  def edit
    @season_team = SeasonTeam.find(params[:id])
  end

  # POST /teams
  # POST /teams.json
  def create
    @season_team = SeasonTeam.new(params[:team])

    respond_to do |format|
      if @season_team.save
        format.html { redirect_to @season_team, notice: 'Team was successfully created.' }
        format.json { render json: @season_team, status: :created, location: @season_team }
      else
        format.html { render action: "new" }
        format.json { render json: @season_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /teams/1
  # PUT /teams/1.json
  def update
    @season_team = SeasonTeam.find(params[:id])

    respond_to do |format|
      if @season_team.update_attributes(params[:season_team])
        format.html { redirect_to @season_team, notice: 'Team was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @season_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.json
  def destroy
    @season_team = SeasonTeam.find(params[:id])
    @season_team.destroy

    respond_to do |format|
      format.html { redirect_to teams_url }
      format.json { head :no_content }
    end
  end
end