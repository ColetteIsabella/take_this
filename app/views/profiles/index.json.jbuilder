json.array!(@profiles) do |profile|
  json.extract! profile, :name, :email, :biography, :age
  json.url profile_url(profile, format: :json)
end
