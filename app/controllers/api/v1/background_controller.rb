class Api::V1::BackgroundController < ApplicationController

  def index
    if params[:query] == nil || params[:query].empty?
      render json: { status: 404, message: 'No location given / location not valid' }, status: :not_found
    else
      picture = BackgroundFacade.picture(params[:query])
      render json: BackgroundSerializer.new(picture)
    end
  end

end