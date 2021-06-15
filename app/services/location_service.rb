class LocationService
  class << self

    def get_coordinates(location)
      response = conn.get("/geocoding/v1/address") do |req|
        req.params['location'] = location
      end
      parse_data(response)
    end

    def get_route(from, to)
      response = conn.get("/directions/v2/route") do |req| 
        req.params['from'] = from
        req.params['to'] = to  
      end
      parse_data(response)
    end


    private

    def conn 
      Faraday.new(
        url: 'http://www.mapquestapi.com',
        params: { key: ENV['MAPQUEST_KEY']})
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end