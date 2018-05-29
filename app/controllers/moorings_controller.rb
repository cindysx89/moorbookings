class MooringsController < ApplicationController

  def index
    @moorings = Mooring.all
  end

  def show
    @booking = Booking.new
    @mooring = Mooring.find(params[:id])
  end

end
