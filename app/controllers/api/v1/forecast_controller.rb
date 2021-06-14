class Api::V1::ForecastController < ApplicationController
  def index
    if params[:location]
      forecast = ForecastFacade.get_location_forecast(params[:location])
      render json: ForecastSerializer.new(forecast)
    else
      render json: { errors: 'No Location Entered' }, status: :bad_request
    end
  end
end