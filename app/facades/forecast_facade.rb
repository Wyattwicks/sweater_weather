class ForecastFacade
  class << self
    def get_location_forecast(location)
      coords = LocationFacade.get_lat_lon(location)
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
  end
end