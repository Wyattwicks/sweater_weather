require 'rails_helper'

RSpec.describe "Users Login" do
  describe "happy path" do 
    it "can return user info after login" do
      user_params = {
        "email": "example@email.com",
        "password": "password"
    }
      headers = {
        CONTENT_TYPE: "application/json",
        ACCEPT: "application/json"
      }
      User.create!(user_params)

    post '/api/v1/sessions', headers: headers, params: user_params.to_json

      expect(response).to be_successful
      expect(response.status).to eq(200)

      user_info = JSON.parse(response.body, symbolize_names: true)

      expect(user_info).to have_key(:data)
      expect(user_info[:data]).to be_a(Hash)
      expect(user_info[:data]).to have_key(:id)

      expect(user_info[:data][:id]).to be_a(String)

      expect(user_info[:data]).to have_key(:type)
      expect(user_info[:data][:type]).to eq("users")

      expect(user_info[:data]).to have_key(:attributes)
      expect(user_info[:data][:attributes]).to be_a(Hash)

      expect(user_info[:data][:attributes].keys.count).to eq(2)

      expect(user_info[:data][:attributes]).to have_key(:email)
      expect(user_info[:data][:attributes][:email]).to be_a(String)

      expect(user_info[:data][:attributes]).to have_key(:api_key)
      expect(user_info[:data][:attributes][:api_key]).to be_an(String)
    end
  end

  describe "sad path", :vcr do
    it "returns error if password or email is incorrect" do
      user = {
        "email": 'email@email.com',
        "password": 'altpassword'
    }
      headers = {
        CONTENT_TYPE: "application/json",
        ACCEPT: "application/json"
      }

    post '/api/v1/sessions', headers: headers, params: user.to_json
    expect(response.status).to eq(400)
    expect(response.body).to eq("{\"errors\":\"Incorrect password or email\"}")
    end
  end
end