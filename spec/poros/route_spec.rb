require 'rails_helper'

RSpec.describe 'Route PORO' do
  it 'creates a route object with neccesary data' do
    route_data = File.read("spec/fixtures/route.json")
    forecast_data = File.read("spec/fixtures/destination_weather.json")
    route_response = JSON.parse(route_data, symbolize_names: true) 
    forecast_response = JSON.parse(forecast_data, symbolize_names: true) 
    route = Route.new(route_response, forecast_response)

    expect(route.start_city).to eq("Denver, CO")
    expect(route.end_city).to eq("Pueblo, CO")
    expect(route.travel_time).to eq("01 hour(s) and 44 minutes") 
  end
end