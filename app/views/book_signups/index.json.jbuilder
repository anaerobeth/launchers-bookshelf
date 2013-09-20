json.array!(@book_signups) do |book_signup|
  json.extract! book_signup, :launcher_id, :book_id
  json.url book_signup_url(book_signup, format: :json)
end
