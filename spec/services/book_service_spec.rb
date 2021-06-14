require 'rails_helper'

RSpec.describe "Book API Service" do
  describe "returns books", :vcr do
    it "returns books based on search query" do 

    location = "denver,co"
    response = BookService.get_books_by_location(location)
    expect(response).to be_a(Hash)
    
    end
  end
end