class BookService
  class << self

    def get_books_by_location(location)
      response = conn.get("search.json") do |req|
        req.params['q'] = location
      end
      parse_data(response)
    end


    private

    def conn 
      Faraday.new('http://openlibrary.org/')
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end