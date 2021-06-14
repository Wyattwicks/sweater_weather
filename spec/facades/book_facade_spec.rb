require 'rails_helper'

describe "Book Facade", :vcr do
  it "returns an array of books based on search params" do
    location = "denver, co"
    quantity = 5
    response = BookFacade.get_books_about_location(location, 5)

    expect(response).to be_a(Array)
    expect(response.first).to be_a(Book)
    expect(response.count).to eq(5)

    expect(response.first.isbn).to eq(["9780762507849", "0762507845"])
    expect(response.first.title).to eq("Denver, Co")
    expect(response.first.publisher).to eq(["Universal Map Enterprises"])
  end
end