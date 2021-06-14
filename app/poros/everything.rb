class Everything
  attr_reader :destination,
              :forecast,
              :total_books_found,
              :books,
              :quantity,
              :id,
              :type


  def initialize(data)
    @id = nil
    @type = "books"
    @forecast = data[:forecast].current_weather
    @destination = data[:location]
    @books = data[:books]
    @total_books_found = data[:amount]
    @quantity = data[:books].count
  end
end