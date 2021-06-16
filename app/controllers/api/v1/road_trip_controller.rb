class Api::V1::RoadTripController < ApplicationController
  def create
    user = User.find_by(api_key: params[:api_key])
    if user
      trip = LocationsFacade.get_road_trip(params[:origin], params[:destination])
      render json: RoadtripSerializer.new(trip)
    else
      render json: { errors: 'Unauthorized' }, status: :unauthorized
    end
  end
end