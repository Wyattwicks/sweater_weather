class Api::V1::PictureController < ApplicationController

  def index
    if params[:location] == nil || params[:location].empty?
      render json: { status: 404, message: 'No location given / location not valid' }, status: :not_found
    else
      picture = PictureFacade.picture(location)
      render json: DestinationSerializer.new(image)
    end
  end

end