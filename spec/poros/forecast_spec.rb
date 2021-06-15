
require 'rails_helper'

RSpec.describe "Forecast PORO" do
  it "creates a forecast object with neccesary data" do
    current_weather_data = File.read("spec/fixtures/current_weather.json")
    current_response = JSON.parse(current_weather_data, symbolize_names: true) 
    current_weather = CurrentWeather.new(current_response)

    daily_weather   = []
    daily_weather_data = File.read("spec/fixtures/daily_weather.json")
    daily_response = JSON.parse(daily_weather_data, symbolize_names: true) 
    5.times do
      daily_weather << DailyWeather.new(daily_response)
    end

    hourly_weather  = []
    hourly_weather_data = File.read("spec/fixtures/hourly_weather.json")
    hourly_response = JSON.parse(hourly_weather_data, symbolize_names: true) 
    8.times do
      hourly_weather << HourlyWeather.new(hourly_response)
    end
    
    forecast = Forecast.new(
      current_weather,
      daily_weather,
      hourly_weather
    )

    expect(forecast).to be_a(Forecast)
    expect(forecast.id).to eq(nil)
    expect(forecast.current_weather.class).to eq(CurrentWeather)
    expect(forecast.daily_weather.class).to eq(Array)
    expect(forecast.daily_weather[0].class).to eq(DailyWeather)
    expect(forecast.daily_weather.count).to eq(5)
    expect(forecast.hourly_weather.class).to eq(Array)
    expect(forecast.hourly_weather[0].class).to eq(HourlyWeather)
    expect(forecast.hourly_weather.count).to eq(8)
  end
end