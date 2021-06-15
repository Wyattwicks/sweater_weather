require 'rails_helper'

RSpec.describe 'Road-Trip create' do
  describe 'Happy Paths' do
    it 'can create a road trip api', :vcr do
      user_params = {
        "email": "example@email.com",
        "password": "password"
    }
      headers = {
        CONTENT_TYPE: "application/json",
        ACCEPT: "application/json"
      }
      User.create!(user_params)

    post '/api/v1/road_trip', headers: headers, params: user_params.to_json
    road_trip = parse(response.body, symbolize_names: true)

    expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(road_trip[:data][:id]).to eq("nil")

      expect(road_trip[:data][:attributes]).to have_key(:start_city)
      expect(road_trip[:data][:attributes]).to have_key(:end_city)
      expect(road_trip[:data][:attributes]).to have_key(:travel_time)
      expect(road_trip[:data][:attributes]).to have_key(:weather_at_eta)
      expect(road_trip[:data][:attributes][:weather_at_eta]).to be_a(Hash)
      expect(road_trip[:data][:attributes][:weather_at_eta]).to have_key(:temperature)
      expect(road_trip[:data][:attributes][:weather_at_eta]).to have_key(:conditions)
    end
  end
end