require 'rails_helper'

RSpec.describe 'Current Weather PORO' do
  it 'creates a Current Weather object with neccesary data' do
    current_weather = CurrentWeather.new()

    expect(current_weather).to be_a(CurrentWeather)
    expect(current_weather.conditions).to eq("clear sky")
    expect(current_weather.datetime).to eq("06/13/2021 at :PM")
    expect(current_weather.feels_like).to eq(87.28)
    expect(current_weather.humidity).to eq(36)
    expect(current_weather.icon).to eq("01d")
    expect(current_weather.sunrise).to eq("06/13/2021 at 05:31AM")
    expect(current_weather.sunset).to eq("06/13/2021 at 08:28PM")
    expect(current_weather.temperature).to eq(88.3)
    expect(current_weather.uvi).to eq(11.86)
    expect(current_weather.visibility).to eq(10000)
  end
end