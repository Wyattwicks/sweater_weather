class BookFacade
  class << self
    def get_books_about_location(location, quantity)
      data = BookService.get_books_by_location(location)

      books = []
      data[:docs].first(quantity).each do |book|
        books << Book.new(book)
      end
      
      books
    end
  end
end