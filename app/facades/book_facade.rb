class BookFacade
  class << self
    def get_books_about_location(location, quantity)
      data = BookService.get_books_by_location(location)

      i = (quantity.to_i - 1)
      books = data[:docs][0..i].map do |book|
        Book.new(book)
      end
    end
  

    def get_total_books(location)
      data = BookService.get_books_by_location(location)
      total_books = data[:numFound]
    end
  end
end