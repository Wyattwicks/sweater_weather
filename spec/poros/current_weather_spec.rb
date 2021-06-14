require 'rails_helper'

RSpec.describe 'Current Weather PORO' do
  it 'creates a Current Weather object with neccesary data' do
    data = File.read("spec/fixtures/current_weather.json")
    response = JSON.parse(data, symbolize_names: true) 
    current_weather = CurrentWeather.new(response)

    expect(current_weather).to be_a(CurrentWeather)
    expect(current_weather.conditions).to eq("scattered clouds")
    expect(current_weather.datetime).to eq("06/13/2021 at 04:27PM")
    expect(current_weather.feels_like).to eq(89.94)
    expect(current_weather.humidity).to eq(29)
    expect(current_weather.icon).to eq("03d")
    expect(current_weather.sunrise).to eq("06/13/2021 at 05:31AM")
    expect(current_weather.sunset).to eq("06/13/2021 at 08:28PM")
    expect(current_weather.temperature).to eq(91.89)
    expect(current_weather.uvi).to eq(5.85)
    expect(current_weather.visibility).to eq(10000)
  end
end