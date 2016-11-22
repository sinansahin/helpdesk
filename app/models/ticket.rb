class Ticket < ActiveRecord::Base
	belongs_to :ticket_type
	belongs_to :ticket_task
	belongs_to :ticket_status
	belongs_to :ticket_message
	belongs_to :ticket_category
	belongs_to :user
end
