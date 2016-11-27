class Ticket < ActiveRecord::Base
	has_many :ticket_tasks
	belongs_to :ticket_status
	has_many :ticket_message
	belongs_to :ticket_category
	belongs_to :user
end
