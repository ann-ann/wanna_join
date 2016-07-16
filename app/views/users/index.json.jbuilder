json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :age, :interests, :facebook_id, :image_url, :city, :country
  json.url user_url(user, format: :json)
end
