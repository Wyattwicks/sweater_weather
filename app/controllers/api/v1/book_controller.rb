class Api::V1::BookController < ApplicationController
  def search
    everything = EverythingFacade.get_everything(location, quantity)
    render json: BookSerializer.new(everything)
  end