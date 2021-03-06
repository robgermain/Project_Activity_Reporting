json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :password_last_updated_at, :employee, :is_active, :is_deleted, :deleted_at
  json.url user_url(user, format: :json)
end
