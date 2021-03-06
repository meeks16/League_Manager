class MatchesController < ApplicationController
  # GET /schedules
  # GET /schedules.json
  def index
  	@season = Season.find_by_id(params[:id])
    @matches = @season.matches
#     @match = @matches.find(params[:id])
#     @seasonteams = @season.season_teams
#     @teams = @season.teams.uniq{|team| team.id}
#     @users = @season.users.uniq{|user| user.id}
    @seasons = Season.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @seasons }
    end
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
    @match = Match.find_by_id(params[:id])
    @season = @match.season
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @match }
    end
  end

  # GET /schedules/new
  # GET /schedules/new.json
  def new
    @match = Match.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @match }
    end
  end

  # GET /schedules/1/edit
  def edit
    @match = Match.find(params[:id])
    @games = @match.games.all
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @match = Match.new(params[:match])

    respond_to do |format|
      if @match.save
        format.html { redirect_to @match, notice: 'Match was successfully created.' }
        format.json { render json: @match, status: :created, location: @match }
      else
        format.html { render action: "new" }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /schedules/1
  # PUT /schedules/1.json
  def update
    @match = Match.find(params[:id])
#     @match.update(params.require(:match_date, :match_timeslot, :season_home_team_id, :season_away_team_id))
#     redirect_to @match
    respond_to do |format|
      if @match.update_attributes(params[:match])
        format.html { redirect_to @match, notice: 'Match was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @match = Match.find(params[:id])
    @match.destroy

    respond_to do |format|
      format.html { redirect_to matches_url }
      format.json { head :no_content }
    end
  end
end
