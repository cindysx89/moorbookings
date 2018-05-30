class MooringsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @moorings = Mooring.all
  end

  def show
    @booking = Booking.new
    @mooring = Mooring.find(params[:id])
  end

end
