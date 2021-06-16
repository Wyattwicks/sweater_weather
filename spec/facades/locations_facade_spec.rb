require 'rails_helper'

describe "Locations Facade", :vcr do
  it "returns a lat and long coordinate based on location" do
    location = "denver, co"
    coords = LocationsFacade.get_lat_lon(location)
    expect(coords).to be_a(Location)
  end

  it 'returns a route between two locations' do
    origin = "denver, co"
    destination = "pueblo, co"
    route = LocationsFacade.get_road_trip(origin, destination)
    expect(route).to be_a(Route)
    expect(route.weather_at_eta).to be_a(Hash)
  end

  it 'returns a route between two locations if route is long' do
    route = LocationsFacade.get_road_trip("New York,NY", "Los Angeles,CA")
    expect(route).to be_a(Route)
    expect(route.weather_at_eta).to be_a(Hash)
  end
end