json.array!(@invites) do |invite|
  json.extract! invite, :id, :user_id, :description, :title, :date, :location
  json.url invite_url(invite, format: :json)
end
