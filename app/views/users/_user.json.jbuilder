json.extract! user, :id, :name, :email, :birthday, :nickname, :created_at, :updated_at
json.url user_url(user, format: :json)
