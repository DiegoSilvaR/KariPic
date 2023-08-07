json.extract! person, :id, :name, :email, :password_digest, :avatar, :created_at, :updated_at
json.url person_url(person, format: :json)
