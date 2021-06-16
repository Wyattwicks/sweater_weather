require 'rails_helper'

RSpec.describe "Background API", type: :request do
  describe "happy path", :vcr do
    it "returns necessaray data" do
      test_location = "denver,co"
      get '/api/v1/backgrounds', params: {location: test_location}
      results = JSON.parse(response.body, symbolize_names: true)
      expect(results).to be_a(Hash)
      expect(results[:results].count).to eq(1)
      expect(results[:results].first).to have_key(:description)
      expect(results[:results].first[:urls]).to have_key(:full)
      expect(results[:results].first[:user][:links]).to have_key(:html)
      expect(results[:results].first[:user]).to have_key(:username)
    end
  end
end
