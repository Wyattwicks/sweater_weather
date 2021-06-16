class LocationsFacade
  class << self

    def get_lat_lon(location)
      call = LocationService.get_coordinates(location)
      data = call[:results].first[:locations].first[:latLng]
      Location.new(data)
    end

    def get_road_trip(origin, destination)
      data = LocationService.get_route(origin, destination)
      forecast = hourly_forecast(destination)
      Route.new(data, forecast)
    end

    def hourly_forecast(destination)
      ForecastFacade.get_hourly_weather_at_final_city(destination)
    end
  end
end