json.extract! conference, :id, :title, :start_date, :end_date, :location, :status, :created_at, :updated_at
json.url conference_url(conference, format: :json)
