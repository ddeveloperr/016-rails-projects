json.extract! book, :id, :name, :caategory, :price, :isbn, :created_at, :updated_at
json.url book_url(book, format: :json)