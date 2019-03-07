class Api::V1::BookingsController < ApplicationController

  before_action :find_booking, only: [:update, :destroy]

  def index
    render json: Booking.all
  end

  def create
    token = request.headers['Authentication'].split(' ')[1]
    user_id = decode(token)["user_id"]
    space_id = params[:space_id]
    @booking = Booking.new(
                space_id: params[:space_id],
                guest_id: user_id,
                start: params["start"].to_date,
                end: params["end"].to_date,
                )
    if @booking.valid?
      @booking.save
      @booking.change_points(@booking.dates.length)
      @booking.guest.reset_reward
      render json: @booking, status: :accepted
    end
      
  end

  def update
    @booking.update(start: params[:start], end: params[:end])
    days = @booking.dates.length - params[:old_days]
    @booking.change_points(days)
    render json: {booking: @booking, booking_dates: @booking.dates, user_points: @booking.guest.points}
  end

  def destroy
    @booking.remove_points
    render json: @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(
      :user_id,
      :space_id,
      :start,
      :end,
    )
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

end
