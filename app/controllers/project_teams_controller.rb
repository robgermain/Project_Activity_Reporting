class ProjectTeamsController < ApplicationController
  before_action :set_project_team, only: [:show, :edit, :update, :destroy]

  # GET /project_teams
  # GET /project_teams.json
  def index
    @project_teams = ProjectTeam.all
  end

  # GET /project_teams/1
  # GET /project_teams/1.json
  def show
  end

  # GET /project_teams/new
  def new
    @project_team = ProjectTeam.new
  end

  # GET /project_teams/1/edit
  def edit
  end

  # POST /project_teams
  # POST /project_teams.json
  def create
    @project_team = ProjectTeam.new(project_team_params)

    respond_to do |format|
      if @project_team.save
        format.html { redirect_to @project_team, notice: 'Project team was successfully created.' }
        format.json { render :show, status: :created, location: @project_team }
      else
        format.html { render :new }
        format.json { render json: @project_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_teams/1
  # PATCH/PUT /project_teams/1.json
  def update
    respond_to do |format|
      if @project_team.update(project_team_params)
        format.html { redirect_to @project_team, notice: 'Project team was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_team }
      else
        format.html { render :edit }
        format.json { render json: @project_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_teams/1
  # DELETE /project_teams/1.json
  def destroy
    @project_team.destroy
    respond_to do |format|
      format.html { redirect_to project_teams_url, notice: 'Project team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_team
      @project_team = ProjectTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_team_params
      params.require(:project_team).permit(:name, :project, :is_active, :is_deleted, :deleted_at)
    end
end
