class Api::V1::BookController < ApplicationController
  def search
    books = Bookfacade.get_books_about_location(location)
  end