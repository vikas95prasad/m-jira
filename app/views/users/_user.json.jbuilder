json.extract! user, :id, :email, :role, :username, :bio, :image
json.url user_url(user, format: :json)
