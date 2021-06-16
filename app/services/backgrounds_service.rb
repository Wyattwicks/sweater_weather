class BackgroundsService
  class << self

    def get_picture(location)
      response = conn.get("/search/photos") do |req|
        req.params['query'] = location
      end
      parse_data(response)
    end


    private

    def conn 
      Faraday.new(
        url: "https://api.unsplash.com",
        params: { client_id: ENV['UNSPLASH_ACCESS_KEY']}
      )
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end