class UserTaskAssignmentsController < ApplicationController
  before_action :set_user_task_assignment, only: [:show, :edit, :update, :destroy]

  # GET /user_task_assignments
  # GET /user_task_assignments.json
  def index
    @user_task_assignments = UserTaskAssignment.all
  end

  # GET /user_task_assignments/1
  # GET /user_task_assignments/1.json
  def show
  end

  # GET /user_task_assignments/new
  def new
    @user_task_assignment = UserTaskAssignment.new
  end

  # GET /user_task_assignments/1/edit
  def edit
  end

  # POST /user_task_assignments
  # POST /user_task_assignments.json
  def create
    @user_task_assignment = UserTaskAssignment.new(user_task_assignment_params)

    respond_to do |format|
      if @user_task_assignment.save
        format.html { redirect_to @user_task_assignment, notice: 'User task assignment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_task_assignment }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_task_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_task_assignments/1
  # PATCH/PUT /user_task_assignments/1.json
  def update
    respond_to do |format|
      if @user_task_assignment.update(user_task_assignment_params)
        format.html { redirect_to @user_task_assignment, notice: 'User task assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_task_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_task_assignments/1
  # DELETE /user_task_assignments/1.json
  def destroy
    @user_task_assignment.destroy
    respond_to do |format|
      format.html { redirect_to user_task_assignments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_task_assignment
      @user_task_assignment = UserTaskAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_task_assignment_params
      params.require(:user_task_assignment).permit(:task_id, :user_id)
    end
end
