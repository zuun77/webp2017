json.extract! post, :id, :club, :deadline, :target, :recruit_type, :homepage, :description, :questions, :created_at, :updated_at
json.url post_url(post, format: :json)
