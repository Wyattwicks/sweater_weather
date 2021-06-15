class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by(email: user_params[:email])
    if user.present? && user.authenticate(user_params[:password])
      render json: UsersSerializer.new(user)
    else
      render json: { errors: 'Incorrect password or email'}, status: :bad_request
    end
  end

  def user_params
    params.permit(:email, :password)
  end
end