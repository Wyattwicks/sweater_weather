class Book
  attr_reader :destination,
              :forecast,
              :total_books_found,
              :books,
              :quantity


  def initialize(forecast, books, amount)
    @id = nil
    @type = "books"
    @forecast = forecast
    @destination = params[:location]
    @books = books
    @total_books_found = amount
    @quantity = books.count
  end
end