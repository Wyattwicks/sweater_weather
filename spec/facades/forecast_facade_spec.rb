require 'rails_helper'

describe "Forecast Facade", :vcr do
  it "returns a forecast based on location" do
    location = "denver, co"
    response = ForecastFacade.get_location_forecast(location)

    expect(response).to be_a(Forecast)
    
    expect(response.current_weather).to be_a(CurrentWeather)
    expect(response.daily_weather.count).to eq(5)
    expect(response.hourly_weather.count).to eq(8)


    response.daily_weather.each do |day|
      expect(day).to be_a(DailyWeather)
      expect(day.conditions).to be_a(String)
      expect(day.date).to be_a(String)
      expect(day.max_temp).to be_a(Float)
    end

    response.hourly_weather.each do |hour|
      expect(hour).to be_a(HourlyWeather)
      expect(hour.conditions).to be_a(String)
      expect(hour.temperature).to be_a(Numeric)
    end
  end

  it "returns hourly forecast for destination city" do
      location = "pueblo, co"
      response = ForecastFacade.get_hourly_weather_at_final_city(location)

      expect(response).to be_a(Hash)
  end

end