class EverythingFacade
  class << self
    def get_everything(location, quantity)
      data = {}
      data[:forecast] = ForecastFacade.get_location_forecast(location)
      data[:books] = BookFacade.get_books_about_location(location, quantity)
      data[:amount] = BookFacade.get_total_books(location)
      data[:location] = location

      final_object = Everything.new(data)
    end
  end
end