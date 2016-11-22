class TicketTaskAssignmentsController < ApplicationController
  before_action :set_ticket_task_assignment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /ticket_task_assignments
  # GET /ticket_task_assignments.json
  def index
    @ticket_task_assignments = TicketTaskAssignment.all
  end

  # GET /ticket_task_assignments/1
  # GET /ticket_task_assignments/1.json
  def show
  end

  # GET /ticket_task_assignments/new
  def new
    @ticket_task_assignment = TicketTaskAssignment.new
  end

  # GET /ticket_task_assignments/1/edit
  def edit
  end

  # POST /ticket_task_assignments
  # POST /ticket_task_assignments.json
  def create
    @ticket_task_assignment = TicketTaskAssignment.new(ticket_task_assignment_params)

    respond_to do |format|
      if @ticket_task_assignment.save
        format.html { redirect_to @ticket_task_assignment, notice: 'Ticket task assignment was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_task_assignment }
      else
        format.html { render :new }
        format.json { render json: @ticket_task_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_task_assignments/1
  # PATCH/PUT /ticket_task_assignments/1.json
  def update
    respond_to do |format|
      if @ticket_task_assignment.update(ticket_task_assignment_params)
        format.html { redirect_to @ticket_task_assignment, notice: 'Ticket task assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_task_assignment }
      else
        format.html { render :edit }
        format.json { render json: @ticket_task_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_task_assignments/1
  # DELETE /ticket_task_assignments/1.json
  def destroy
    @ticket_task_assignment.destroy
    respond_to do |format|
      format.html { redirect_to ticket_task_assignments_url, notice: 'Ticket task assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_task_assignment
      @ticket_task_assignment = TicketTaskAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_task_assignment_params
      params.require(:ticket_task_assignment).permit(:ticket_task_id, :user_id)
    end
end
