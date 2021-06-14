require 'rails_helper'

RSpec.describe "Everything API", type: :request do
  describe "happy path", :vcr do
    it "returns all info" do
      test_location = "denver,co"
      quantity = 2
      get "/api/v1/book-search?location=#{test_location}&quantity=#{quantity}"
      everything = JSON.parse(response.body, symbolize_names: true)
      binding.pry
      

      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(response).to be_a(Hash)
      expect(everything.books).to be_a(Array)
      expect(everything.forecast).to be_a(Hash)
      expect(everything.total_books_found).to eq(6)
    end
  end
end