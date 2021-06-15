require 'rails_helper'

RSpec.describe "Location API Service" do
  describe "returns lat / long coordinates", :vcr do
    it "returns coordinates for a given location" do 

    location = "denver, co"
    response = LocationService.get_coordinates(location)
    expect(response).to be_a(Hash)
    #Add testing to find coordinates
    # "lat": 39.738453,
		# "lng": -104.984853
    end
  end

  describe "get road trip info for short route", :vcr do
    it "can return data about a route between two points" do
      results = LocationService.get_route("Denver,CO", "Pueblo,CO")
      expect(results).to be_a(Hash)
      expect(results).to have_key(:route)
    end

    it "can return data for long route" do
      results = LocationService.get_route("New York,NY", "Los Angeles,CA")
      expect(results).to be_a(Hash)
      expect(results).to have_key(:route)
    end
  end
end