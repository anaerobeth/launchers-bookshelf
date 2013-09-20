json.array!(@book_launchers) do |book_launcher|
  json.extract! book_launcher, :book_id, :launcher_id
  json.url book_launcher_url(book_launcher, format: :json)
end
