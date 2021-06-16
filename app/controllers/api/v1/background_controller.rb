class Api::V1::BackgroundController < ApplicationController

  def index
    if params[:location] == nil || params[:location].empty?
      render json: { status: 404, message: 'No location given / location not valid' }, status: :not_found
    else
      picture = BackgroundFacade.picture(location)
      render json: BackgroundSerializer.new(image)
    end
  end

end