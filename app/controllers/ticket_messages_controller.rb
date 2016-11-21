class TicketMessagesController < ApplicationController
  before_action :set_ticket_message, only: [:show, :edit, :update, :destroy]

  # GET /ticket_messages
  # GET /ticket_messages.json
  def index
    @ticket_messages = TicketMessage.all
  end

  # GET /ticket_messages/1
  # GET /ticket_messages/1.json
  def show
  end

  # GET /ticket_messages/new
  def new
    @ticket_message = TicketMessage.new
  end

  # GET /ticket_messages/1/edit
  def edit
  end

  # POST /ticket_messages
  # POST /ticket_messages.json
  def create
    @ticket_message = TicketMessage.new(ticket_message_params)

    respond_to do |format|
      if @ticket_message.save
        format.html { redirect_to @ticket_message, notice: 'Ticket message was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_message }
      else
        format.html { render :new }
        format.json { render json: @ticket_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_messages/1
  # PATCH/PUT /ticket_messages/1.json
  def update
    respond_to do |format|
      if @ticket_message.update(ticket_message_params)
        format.html { redirect_to @ticket_message, notice: 'Ticket message was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_message }
      else
        format.html { render :edit }
        format.json { render json: @ticket_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_messages/1
  # DELETE /ticket_messages/1.json
  def destroy
    @ticket_message.destroy
    respond_to do |format|
      format.html { redirect_to ticket_messages_url, notice: 'Ticket message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_message
      @ticket_message = TicketMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_message_params
      params.require(:ticket_message).permit(:ticket_id, :user_id, :content)
    end
end
