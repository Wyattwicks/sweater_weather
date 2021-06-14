class EverythingFacade
  class << self
    def get_everything(location, quantity)
      forecast = ForecastFacade.get_location_forecast(location)
      books = BookFacade.get_books_about_location(location, quantity)
      amount = BookFacade.get_total_books(location)

      final_object = Everything.new(forecast, books, amount, location)
    end
  end
end