require 'rails_helper'

RSpec.describe "Weather API Service" do
  describe "returns forecast", :vcr do
    it "returns a forecast for a given latitude and longitude" do 

    lat = 39.738453
		lon = -104.984853
    response = WeatherService.get_forecast(lat, lon)
    expect(response).to be_a(Hash)
    
    
    end
  end
end