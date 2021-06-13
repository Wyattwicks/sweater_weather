class WeatherService
  class << self

    def get_forecast(lat, lon)
      response = conn.get("/data/2.5/onecall") do |req|
        req.params['lat'] = lat
        req.params['lon'] = lon
        req.params['exclude'] = "minutely,alerts"
        req.params['units'] = "imperial"
      end
      parse_data(response)
    end


    private

    def conn 
      Faraday.new(
        url: 'https://api.openweathermap.org',
        params: { appid: ENV['WEATHER_KEY']})
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end