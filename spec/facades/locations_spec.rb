require 'rails_helper'

describe "LocationsFacade", :vcr do
  it "returns a lat and long coordinate based on location" do
    location = "denver, co"
    coords = LocationsFacade.get_lat_lon(location)
    expect(coords).to be_a(Location)

  end
end