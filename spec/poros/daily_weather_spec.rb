require 'rails_helper'

RSpec.describe 'Daily Weather PORO' do
  it 'creates a Daily Weather object with neccesary data' do
    data = File.read("spec/fixtures/daily_weather.json")
    response = JSON.parse(data, symbolize_names: true) 
    daily_weather = DailyWeather.new(response)
    expect(daily_weather).to be_a(DailyWeather)
    expect(daily_weather.conditions).to eq("clear sky")
    expect(daily_weather.date).to eq("06/13/2021")
    expect(daily_weather.icon).to eq("01d")
    expect(daily_weather.sunrise).to eq("06/13/2021 at 05:31AM")
    expect(daily_weather.sunset).to eq("06/13/2021 at 08:28PM")
    expect(daily_weather.max_temp).to eq(93.97)
    expect(daily_weather.min_temp).to eq(67.41)
  end
end

