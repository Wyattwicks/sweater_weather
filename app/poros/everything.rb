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
    @destination = data[:location]
    @forecast = {}
      @forecast[:summary]= data[:forecast].current_weather.conditions
      @forecast[:temperature]= data[:forecast].current_weather.temperature
    @books = data[:books]
    @total_books_found = data[:amount]
    @quantity = data[:books].count
  end
end