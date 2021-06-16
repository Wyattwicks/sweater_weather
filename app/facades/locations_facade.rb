class LocationsFacade
  class << self

    def get_lat_lon(location)
      call = LocationService.get_coordinates(location)
      data = call[:results].first[:locations].first[:latLng]
      Location.new(data)
    end

    def get_road_trip(origin, destination)
      data = LocationService.get_route(origin, destination)
      if data[:info][:statuscode] == 0
        forecast = ForecastFacade.get_hourly_weather_at_final_city(destination)
        Route.new(data, forecast)
      else
        Invalid.new(data)
      end
    end
  end
end