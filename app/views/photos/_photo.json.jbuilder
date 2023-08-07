json.extract! photo, :id, :title, :caption, :person_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
