require 'rails_helper'

RSpec.describe "Location PORO" do
  it "returns a location object with latitude and longitude attributes" do
    location = {
          "lat": 39.738453,
          "lng": -104.984853
        }
    test = Location.new(location)
    expect(test.lat).to eq(39.738453)
    expect(test.lon).to eq(-104.984853)
  end
end