json.extract! user, :id, :user_id, :user_role, :username, :email, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
