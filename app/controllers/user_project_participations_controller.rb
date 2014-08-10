class UserProjectParticipationsController < ApplicationController
  before_action :set_user_project_participation, only: [:show, :edit, :update, :destroy]

  # GET /user_project_participations
  # GET /user_project_participations.json
  def index
    @user_project_participations = UserProjectParticipation.all
  end

  # GET /user_project_participations/1
  # GET /user_project_participations/1.json
  def show
  end

  # GET /user_project_participations/new
  def new
    @user_project_participation = UserProjectParticipation.new
  end

  # GET /user_project_participations/1/edit
  def edit
  end

  # POST /user_project_participations
  # POST /user_project_participations.json
  def create
    @user_project_participation = UserProjectParticipation.new(user_project_participation_params)

    respond_to do |format|
      if @user_project_participation.save
        format.html { redirect_to @user_project_participation, notice: 'User project participation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_project_participation }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_project_participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_project_participations/1
  # PATCH/PUT /user_project_participations/1.json
  def update
    respond_to do |format|
      if @user_project_participation.update(user_project_participation_params)
        format.html { redirect_to @user_project_participation, notice: 'User project participation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_project_participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_project_participations/1
  # DELETE /user_project_participations/1.json
  def destroy
    @user_project_participation.destroy
    respond_to do |format|
      format.html { redirect_to user_project_participations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_project_participation
      @user_project_participation = UserProjectParticipation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_project_participation_params
      params.require(:user_project_participation).permit(:project_id, :user_id)
    end
end
