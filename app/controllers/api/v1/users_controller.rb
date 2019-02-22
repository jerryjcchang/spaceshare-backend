class Api::V1::UsersController < ApplicationController

  before_action :find_user, only: [:create, :update, :destroy]

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
    render json: User.find(payload["user_id"])
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
      :phone,
    )
  end

  def find_user
    @user = User.find_by(username: params[:id])
  end

end
