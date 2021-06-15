require 'rails_helper'

RSpec.describe 'Users Create' do
  describe 'Happy Paths' do
    it 'creates new user' do
      user_params = {
        "email": "email@email.com",
        "password": "password",
        "password_confirmation": "password"
      }
      headers = {
        CONTENT_TYPE: "application/json",
        ACCEPT: "application/json"
      }

      post '/api/v1/users', headers: headers, params: JSON.generate(user_params)

      new_user = User.last
      expect(response).to be_successful
      expect(response).to have_http_status(201)

      user_response = JSON.parse(response.body, symbolize_names: true)

      expect(user_response).to have_key(:data)
      expect(user_response[:data]).to be_a(Hash)
      expect(user_response[:data]).to have_key(:type)
      expect(user_response[:data]).to have_key(:id)
      expect(user_response[:data][:id]).to eq("#{new_user.id}")
      expect(user_response[:data]).to have_key(:attributes)

      type = user_response[:data][:type]

      expect(type).to be_a(String)
      expect(type).to eq("users")

      attributes = user_response[:data][:attributes]

      expect(attributes).to have_key(:email)
      expect(attributes[:email]).to eq(new_user.email)
      expect(attributes).to have_key(:api_key)
      expect(attributes[:api_key]).to be_a(String)
      expect(attributes).to_not have_key(:password)
    end
  end
end