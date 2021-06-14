class BookSerializer
  include FastJsonapi::ObjectSerializer
    attributes :forecast, :destination,  :total_books_found, :books, :quantity
end