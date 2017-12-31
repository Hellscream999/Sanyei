json.extract! user, :id, :first_name, :last_name, :profile_type, :profile_id, :nick_name, :address, :email, :phone_number, :created_at, :updated_at
json.url user_url(user, format: :json)
