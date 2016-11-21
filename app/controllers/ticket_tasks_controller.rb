class TicketTasksController < ApplicationController
  before_action :set_ticket_task, only: [:show, :edit, :update, :destroy]

  # GET /ticket_tasks
  # GET /ticket_tasks.json
  def index
    @ticket_tasks = TicketTask.all
  end

  # GET /ticket_tasks/1
  # GET /ticket_tasks/1.json
  def show
  end

  # GET /ticket_tasks/new
  def new
    @ticket_task = TicketTask.new
  end

  # GET /ticket_tasks/1/edit
  def edit
  end

  # POST /ticket_tasks
  # POST /ticket_tasks.json
  def create
    @ticket_task = TicketTask.new(ticket_task_params)

    respond_to do |format|
      if @ticket_task.save
        format.html { redirect_to @ticket_task, notice: 'Ticket task was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_task }
      else
        format.html { render :new }
        format.json { render json: @ticket_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_tasks/1
  # PATCH/PUT /ticket_tasks/1.json
  def update
    respond_to do |format|
      if @ticket_task.update(ticket_task_params)
        format.html { redirect_to @ticket_task, notice: 'Ticket task was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_task }
      else
        format.html { render :edit }
        format.json { render json: @ticket_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_tasks/1
  # DELETE /ticket_tasks/1.json
  def destroy
    @ticket_task.destroy
    respond_to do |format|
      format.html { redirect_to ticket_tasks_url, notice: 'Ticket task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_task
      @ticket_task = TicketTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_task_params
      params.require(:ticket_task).permit(:ticket_id, :user_id, :content, :is_done)
    end
end
