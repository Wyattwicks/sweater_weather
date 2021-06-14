class Everything
  attr_reader :destination,
              :forecast,
              :total_books_found,
              :books,
              :quantity


  def initialize(forecast, books, amount, location)
    @id = nil
    @type = "books"
    @forecast = forecast.current_weather
    @destination = location
    @books = books
    @total_books_found = amount
    @quantity = books.count
  end
end