class Api::V1::BookController < ApplicationController
  def show
    everything = EverythingFacade.get_everything(params[:location], params[:quantity])
    render json: BookSerializer.new(everything)
  end
end