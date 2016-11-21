json.extract! ticket_task, :id, :ticket_id, :user_id, :content, :is_done, :created_at, :updated_at
json.url ticket_task_url(ticket_task, format: :json)