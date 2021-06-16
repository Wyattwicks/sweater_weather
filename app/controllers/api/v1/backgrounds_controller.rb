class Api::V1::BackgroundsController < ApplicationController
  def index
    if params[:location] == nil || params[:location].empty?
      render json: { status: 404, message: 'No location given / location not valid' }, status: :not_found
    else
      picture = BackgroundsFacade.picture(location)
      render json: BackgroundsSerializer.new(picture)
    end
  end
end