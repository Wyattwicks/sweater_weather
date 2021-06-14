class BookSerializer
  include FastJsonapi::ObjectSerializer
    attributes :id, :type, :forecast, :destination,  :total_books_found, :books, :quantity
end