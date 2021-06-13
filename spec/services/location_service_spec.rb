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
end