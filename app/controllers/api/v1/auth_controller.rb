class Api::V1::AuthController < ApplicationController
  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      render json: {
        message: "correct email and password",
        error: false,
        user: @user,
        token: encode({user_id: @user.id})
        }, status: :accepted
    else
      render json: {
        message: "cannot find email and password combination",
        error: true
        }, status: :unauthorized
    end
  end

end
