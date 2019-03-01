class Api::V1::BookingsController < ApplicationController

  def index
    render json: Booking.all
  end

  def create
    token = request.headers['Authentication'].split(' ')[1]
    user_id = decode(token)["user_id"]
    @booking = Booking.new(space_id: params[:space_id],
                guest_id: user_id,
                start: params["start"].to_date,
                end: params["end"].to_date,
                )
    if @booking.valid?
      @booking.save
      render json: @booking, status: :accepted
    end
      
  end

  def update
  end

  def destroy
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

end
