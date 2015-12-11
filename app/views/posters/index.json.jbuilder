json.array!(@posters) do |poster|
  json.extract! poster, :id, :username, :user_id
  json.url poster_url(poster, format: :json)
end
