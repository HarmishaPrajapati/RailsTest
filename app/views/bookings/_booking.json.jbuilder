json.extract! booking, :id, :customer_id, :cleaner_id, :date, :created_at, :updated_at
json.url booking_url(booking, format: :json)
