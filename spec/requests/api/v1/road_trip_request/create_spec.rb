require 'rails_helper'

RSpec.describe 'Road-Trip create' do
  describe 'Happy Paths' do
    it 'can create a road trip api', :vcr do
      user = User.create!(email: "test", password: "test", api_key: "123")
      trip_params = {
        origin: "denver, co",
        destination: "pueblo, co",
        api_key: "123"
      }
      headers = {
        CONTENT_TYPE: "application/json",
        ACCEPT: "application/json"
      }

    post '/api/v1/road_trip', headers: headers, params: trip_params.to_json
    road_trip = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(road_trip[:data][:id]).to eq(nil)

      expect(road_trip[:data][:attributes]).to have_key(:start_city)
      expect(road_trip[:data][:attributes]).to have_key(:end_city)
      expect(road_trip[:data][:attributes]).to have_key(:travel_time)
      expect(road_trip[:data][:attributes]).to have_key(:weather_at_eta)
      expect(road_trip[:data][:attributes][:weather_at_eta]).to be_a(Hash)
      expect(road_trip[:data][:attributes][:weather_at_eta]).to have_key(:temperature)
      expect(road_trip[:data][:attributes][:weather_at_eta]).to have_key(:conditions)
    end
  end

  describe "Sad path", :vcr do
    it "returns an error if api_key isnt found" do 
      post '/api/v1/road_trip', headers: headers
      expect(response.status).to eq(401)
      expect(response.body).to eq("{\"errors\":\"Unauthorized\"}")
    end
  end
end