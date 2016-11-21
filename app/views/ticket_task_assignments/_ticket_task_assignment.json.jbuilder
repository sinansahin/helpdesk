json.extract! ticket_task_assignment, :id, :ticket_task_id, :user_id, :created_at, :updated_at
json.url ticket_task_assignment_url(ticket_task_assignment, format: :json)