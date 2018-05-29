class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @mooring = Mooring.new
  end

  def create
    @booking = Booking.new(booking_params)

  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
