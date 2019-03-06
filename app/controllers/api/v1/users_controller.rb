class Api::V1::UsersController < ApplicationController

  before_action :find_user, only: [:update, :destroy,]

  def index
    render json: User.all
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      render json: @user
    end
  end

  # def show
  #   render json: @user
  # end

  def update
    @user.update(user_params)
    render json: @user
  end

  def destroy
    render json: @user.destroy
  end

  def profile
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
    render json: {user: @user,
                  bookings: @user.booked_spaces,
                  spaces: @user.hosted_spaces
                 }, status: :accepted
  end

  private

  def user_params
    params.require(:user).permit(
      :email,
      :first_name,
      :last_name,
      :company,
      :city,
      :state,
      :password,
      :password_confirmation,
      :phone,
    )
  end

  def find_user
    @user = User.find_by(username: params[:id])
  end

end
