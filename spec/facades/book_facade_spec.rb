require 'rails_helper'

describe "Book Facade", :vcr do
  it "returns an array of books based on search params" do
    location = "denver, co"
    response = BookFacade.get_books_about_location(location)

    expect(response).to be_a(Array)
    expect(response.first).to be_a(Book)

    expect(response.first.isbn).to eq(["9780762507849", "0762507845"])
    expect(response.first.title).to eq("Denver, Co")
    expect(response.first.publisher).to eq(["Universal Map Enterprises"])
  end
end