require 'rails_helper'

RSpec.describe 'Hourly Weather PORO' do
  it 'creates Hourly Weather object with neccesary data' do
    data = File.read("spec/fixtures/hourly_weather.json")
    response = JSON.parse(data, symbolize_names: true) 
    hourly_weather = HourlyWeather.new(response)
    expect(hourly_weather).to be_a(HourlyWeather)
    expect(hourly_weather.conditions).to eq("scattered clouds")
    expect(hourly_weather.time).to eq("04:00PM")
    expect(hourly_weather.icon).to eq("03d")
    expect(hourly_weather.temperature).to eq(91.76)
  end
end