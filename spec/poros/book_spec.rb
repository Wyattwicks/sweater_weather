require 'rails_helper'

RSpec.describe 'Book PORO' do
  it 'creates book objects object with neccesary data' do
    data = File.read("spec/fixtures/book.json")
    response = JSON.parse(data, symbolize_names: true) 
    book_data = Book.new(response)
    expect(book_data).to be_a(Book)
    expect(book_data.isbn).to eq(["9780762507849", "0762507845"])
    expect(book_data.title).to eq("Denver, Co")
    expect(book_data.publisher).to eq(["Universal Map Enterprises"])
  end
end