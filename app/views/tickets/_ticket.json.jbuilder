json.extract! ticket, :id, :user_id, :organization_id, :title, :content, :ticket_category_id, :ticket_status_id, :contact, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)