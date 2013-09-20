json.array!(@launchers) do |launcher|
  json.extract! launcher, :user_name
  json.url launcher_url(launcher, format: :json)
end
