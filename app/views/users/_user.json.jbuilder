json.extract! user, :id, :name, :birthday, :phone_number, :contact, :level, :sex, :notes, :created_at, :updated_at
json.url user_url(user, format: :json)
