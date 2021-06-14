require 'rails_helper'

RSpec.describe "Everything API", type: :request do
  describe "happy path", :vcr do
    it "returns all info" do
      test_location = "denver,co"
      quantity = 2
      get "/api/v1/book-search?location=#{test_location}&quantity=#{quantity}"
      everything = JSON.parse(response.body, symbolize_names: true)
  
      expect(response).to be_successful
      expect(response.status).to eq(200)

      expect(everything).to be_a(Hash)
      expect(everything[:data][:attributes][:total_books_found]).to eq(35992)
      expect(everything[:data][:attributes][:quantity]).to eq(2)
      expect(everything[:data][:id]).to eq(nil)
      expect(everything[:data][:type]).to eq("book")

      
      expect(everything[:data][:attributes][:books]).to be_a(Array)
      expect(everything[:data][:attributes][:books].first).to be_a(Hash)
      expect(everything[:data][:attributes][:books].first[:title]).to eq("Denver, Co")

      expect(everything[:data][:attributes][:forecast]).to be_a(Hash)
      expect(everything[:data][:attributes][:forecast][:summary]).to eq("clear sky")
      expect(everything[:data][:attributes][:forecast][:temperature]).to eq(85.08)
    end
  end
end