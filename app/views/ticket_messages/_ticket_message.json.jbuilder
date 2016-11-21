json.extract! ticket_message, :id, :ticket_id, :user_id, :content, :created_at, :updated_at
json.url ticket_message_url(ticket_message, format: :json)