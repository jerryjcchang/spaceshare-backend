class Api::V1::SpacesController < ApplicationController

  before_action :find_space, only: [:create, :show, :update, :destroy]

  def get_spaces
    start = params["starting_index"].to_i
    last = start+19
    render json: Space.all.sort_by{|space| space.id}
  end

  def create
    @space = Space.new(space_params)
    if @space.valid?
      @space.save
      render json: @space
    end
  end

  def show
    render json: @space
  end

  def update
    @space.update(space_params)
    render json: @space
  end

  def destroy
    render json: @space.destroy
  end

  private

  def space_params
    params.require(:space).permit(
      :name,
      :street_address,
      :city,
      :state,
      :zip,
      :lat,
      :long,
      :hourly_rate,
      :description,
      :host_id,
    )
  end

  def find_space
    @space = Space.find_by(Spacename: params[:id])
  end

end
