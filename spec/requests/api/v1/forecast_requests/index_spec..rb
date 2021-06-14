require 'rails_helper'

RSpec.describe "Weather API", type: :request do
  describe "happy path", :vcr do
    it "returns weather for a given location" do 
      test_location = "denver,co"
      get '/api/v1/forecast', params: {location: test_location}
      forecast = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(forecast).to be_a(Hash)
      expect(forecast[:data][:id]).to eq(nil)
      expect(forecast[:data][:type]).to eq("forecast")
      expect(forecast[:data][:attributes].count).to eq(3)
      expect(forecast[:data][:attributes]).to have_key(:current_weather)
      expect(forecast[:data][:attributes]).to have_key(:hourly_weather)
      expect(forecast[:data][:attributes]).to have_key(:daily_weather)

      expect(forecast[:data][:attributes][:current_weather]).to have_key(:datetime)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:sunrise)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:sunset)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:temperature)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:feels_like)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:humidity)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:uvi)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:visibility)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:conditions)
      expect(forecast[:data][:attributes][:current_weather]).to have_key(:icon)
      expect(forecast[:data][:attributes][:current_weather]).to_not have_key(:dew_point)

      expect(forecast[:data][:attributes][:daily_weather]).to be_an(Array)
      expect(forecast[:data][:attributes][:daily_weather].count).to eq(5)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:date)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:sunrise)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:sunset)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:max_temp)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:min_temp)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:conditions)
      expect(forecast[:data][:attributes][:daily_weather].first).to have_key(:icon)
      expect(forecast[:data][:attributes][:daily_weather].first).to_not have_key(:dew_point)

      expect(forecast[:data][:attributes][:hourly_weather]).to be_an(Array)
      expect(forecast[:data][:attributes][:hourly_weather].count).to eq(8)
      expect(forecast[:data][:attributes][:hourly_weather].first).to have_key(:time)
      expect(forecast[:data][:attributes][:hourly_weather].first).to have_key(:temperature)
      expect(forecast[:data][:attributes][:hourly_weather].first).to have_key(:conditions)
      expect(forecast[:data][:attributes][:hourly_weather].first).to have_key(:icon)
      expect(forecast[:data][:attributes][:hourly_weather].first).to_not have_key(:dew_point)
    end
  end

  describe "sad path", :vcr do
    it "returns an error if location is not entered as a param" do 
      get '/api/v1/forecast'
      forecast = JSON.parse(response.body, symbolize_names: true)
      expect(response.status).to eq(400)
    end
  end
end