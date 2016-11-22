class TicketTaskAssignment < ActiveRecord::Base
	has_one :ticket_task
	belongs_to :user
end
