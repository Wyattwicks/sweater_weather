class LocationsFacade
  class << self

    def get_lat_lon(location)
      call = LocationService.get_coordinates(location)
      data = call[:results].first[:locations].first[:latLng]
      Location.new(data)
    end
  end
end