class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: UserSerializer.new(user)
    elsif !params[:email] || !params[:password]
      render json: { errors: 'Email and password must be provided' }, status: :unauthorized
    else
      render json: { errors: 'Invalid email or password' }, status: :bad_request
    end
  end
end