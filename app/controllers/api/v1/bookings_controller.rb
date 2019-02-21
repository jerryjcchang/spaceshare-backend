class Api::V1::BookingsController < ApplicationController

  def index
    render json: Booking.all
  end

  def create
  end

  def update
  end

  def destroy
  end
end
