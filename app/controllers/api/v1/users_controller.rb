class Api::V1::UsersController < ApplicationController

  before_action :find_user, only: [:redeem_reward, :profile, :destroy,]

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

  def redeem_reward
    @user.update(points: @user.points - 10000, reward: true)
  end

  def destroy
    render json: @user.destroy
  end

  def profile
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
      :reward,
    )
  end

  def find_user
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
  end

end
