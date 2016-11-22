class TicketTask < ActiveRecord::Base
	has_many :tickets
	belongs_to :ticket_task_assignment
end
