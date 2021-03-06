class ForecastFacade
  class << self
    def get_location_forecast(location)
      coords = LocationsFacade.get_lat_lon(location)
      lat = coords.lat
      lon = coords.lon
      data = WeatherService.get_forecast(lat, lon)
      current_weather = CurrentWeather.new(data[:current])

      daily_weather = data[:daily][0..4].map do |daily_data|
        DailyWeather.new(daily_data)
      end

      hourly_weather = data[:hourly][0..7].map do |hourly_data|
        HourlyWeather.new(hourly_data)
      end

      Forecast.new(current_weather, daily_weather, hourly_weather)    
    end

    def get_hourly_weather_at_final_city(location)
      coords = LocationsFacade.get_lat_lon(location)
      lat = coords.lat
      lon = coords.lon
      WeatherService.get_forecast(lat, lon)[:hourly]
    end
  end
end